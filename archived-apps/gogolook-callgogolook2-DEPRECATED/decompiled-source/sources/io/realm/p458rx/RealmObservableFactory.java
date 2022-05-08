package io.realm.p458rx;

import io.reactivex.BackpressureStrategy;
import io.reactivex.Flowable;
import io.reactivex.FlowableEmitter;
import io.reactivex.FlowableOnSubscribe;
import io.reactivex.Observable;
import io.reactivex.ObservableEmitter;
import io.reactivex.ObservableOnSubscribe;
import io.reactivex.Single;
import io.reactivex.disposables.Disposables;
import io.realm.DynamicRealm;
import io.realm.DynamicRealmObject;
import io.realm.ObjectChangeSet;
import io.realm.OrderedCollectionChangeSet;
import io.realm.OrderedRealmCollectionChangeListener;
import io.realm.Realm;
import io.realm.RealmChangeListener;
import io.realm.RealmConfiguration;
import io.realm.RealmList;
import io.realm.RealmModel;
import io.realm.RealmObject;
import io.realm.RealmObjectChangeListener;
import io.realm.RealmQuery;
import io.realm.RealmResults;
import java.util.IdentityHashMap;
import java.util.Map;
/* renamed from: io.realm.rx.RealmObservableFactory */
/* loaded from: classes3-dex2jar.jar:io/realm/rx/RealmObservableFactory.class */
public class RealmObservableFactory implements RxObservableFactory {
    public static final BackpressureStrategy BACK_PRESSURE_STRATEGY = BackpressureStrategy.LATEST;
    public ThreadLocal<StrongReferenceCounter<RealmResults>> resultsRefs = new ThreadLocal<StrongReferenceCounter<RealmResults>>() { // from class: io.realm.rx.RealmObservableFactory.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.lang.ThreadLocal
        public StrongReferenceCounter<RealmResults> initialValue() {
            return new StrongReferenceCounter<>();
        }
    };
    public ThreadLocal<StrongReferenceCounter<RealmList>> listRefs = new ThreadLocal<StrongReferenceCounter<RealmList>>() { // from class: io.realm.rx.RealmObservableFactory.2
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.lang.ThreadLocal
        public StrongReferenceCounter<RealmList> initialValue() {
            return new StrongReferenceCounter<>();
        }
    };
    public ThreadLocal<StrongReferenceCounter<RealmModel>> objectRefs = new ThreadLocal<StrongReferenceCounter<RealmModel>>() { // from class: io.realm.rx.RealmObservableFactory.3
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.lang.ThreadLocal
        public StrongReferenceCounter<RealmModel> initialValue() {
            return new StrongReferenceCounter<>();
        }
    };

    /* renamed from: io.realm.rx.RealmObservableFactory$StrongReferenceCounter */
    /* loaded from: classes3-dex2jar.jar:io/realm/rx/RealmObservableFactory$StrongReferenceCounter.class */
    public static class StrongReferenceCounter<K> {
        public final Map<K, Integer> references;

        public StrongReferenceCounter() {
            this.references = new IdentityHashMap();
        }

        public void acquireReference(K k) {
            Integer num = this.references.get(k);
            if (num == null) {
                this.references.put(k, 1);
            } else {
                this.references.put(k, Integer.valueOf(num.intValue() + 1));
            }
        }

        public void releaseReference(K k) {
            Integer num = this.references.get(k);
            if (num == null) {
                throw new IllegalStateException("Object does not have any references: " + k);
            } else if (num.intValue() > 1) {
                this.references.put(k, Integer.valueOf(num.intValue() - 1));
            } else if (num.intValue() == 1) {
                this.references.remove(k);
            } else {
                throw new IllegalStateException("Invalid reference count: " + num);
            }
        }
    }

    @Override // io.realm.p458rx.RxObservableFactory
    public Observable<ObjectChange<DynamicRealmObject>> changesetsFrom(DynamicRealm dynamicRealm, final DynamicRealmObject dynamicRealmObject) {
        final RealmConfiguration configuration = dynamicRealm.getConfiguration();
        return Observable.create(new ObservableOnSubscribe<ObjectChange<DynamicRealmObject>>() { // from class: io.realm.rx.RealmObservableFactory.17
            public void subscribe(final ObservableEmitter<ObjectChange<DynamicRealmObject>> observableEmitter) throws Exception {
                final DynamicRealm instance = DynamicRealm.getInstance(configuration);
                ((StrongReferenceCounter) RealmObservableFactory.this.objectRefs.get()).acquireReference(dynamicRealmObject);
                final RealmObjectChangeListener<DynamicRealmObject> realmObjectChangeListener = new RealmObjectChangeListener<DynamicRealmObject>() { // from class: io.realm.rx.RealmObservableFactory.17.1
                    public void onChange(DynamicRealmObject dynamicRealmObject2, ObjectChangeSet objectChangeSet) {
                        if (!observableEmitter.isDisposed()) {
                            observableEmitter.onNext(new ObjectChange(dynamicRealmObject2, objectChangeSet));
                        }
                    }
                };
                dynamicRealmObject.addChangeListener(realmObjectChangeListener);
                observableEmitter.setDisposable(Disposables.fromRunnable(new Runnable() { // from class: io.realm.rx.RealmObservableFactory.17.2
                    @Override // java.lang.Runnable
                    public void run() {
                        dynamicRealmObject.removeChangeListener(realmObjectChangeListener);
                        instance.close();
                        ((StrongReferenceCounter) RealmObservableFactory.this.objectRefs.get()).releaseReference(dynamicRealmObject);
                    }
                }));
                observableEmitter.onNext(new ObjectChange(dynamicRealmObject, null));
            }
        });
    }

    @Override // io.realm.p458rx.RxObservableFactory
    public <E> Observable<CollectionChange<RealmList<E>>> changesetsFrom(DynamicRealm dynamicRealm, final RealmList<E> realmList) {
        final RealmConfiguration configuration = dynamicRealm.getConfiguration();
        return Observable.create(new ObservableOnSubscribe<CollectionChange<RealmList<E>>>() { // from class: io.realm.rx.RealmObservableFactory.13
            public void subscribe(final ObservableEmitter<CollectionChange<RealmList<E>>> observableEmitter) throws Exception {
                final DynamicRealm instance = DynamicRealm.getInstance(configuration);
                ((StrongReferenceCounter) RealmObservableFactory.this.listRefs.get()).acquireReference(realmList);
                final OrderedRealmCollectionChangeListener<RealmList<E>> orderedRealmCollectionChangeListener = new OrderedRealmCollectionChangeListener<RealmList<E>>() { // from class: io.realm.rx.RealmObservableFactory.13.1
                    public void onChange(RealmList<E> realmList2, OrderedCollectionChangeSet orderedCollectionChangeSet) {
                        if (!observableEmitter.isDisposed()) {
                            observableEmitter.onNext(new CollectionChange(realmList2, orderedCollectionChangeSet));
                        }
                    }
                };
                realmList.addChangeListener(orderedRealmCollectionChangeListener);
                observableEmitter.setDisposable(Disposables.fromRunnable(new Runnable() { // from class: io.realm.rx.RealmObservableFactory.13.2
                    @Override // java.lang.Runnable
                    public void run() {
                        realmList.removeChangeListener(orderedRealmCollectionChangeListener);
                        instance.close();
                        ((StrongReferenceCounter) RealmObservableFactory.this.listRefs.get()).releaseReference(realmList);
                    }
                }));
                observableEmitter.onNext(new CollectionChange(realmList, null));
            }
        });
    }

    @Override // io.realm.p458rx.RxObservableFactory
    public <E> Observable<CollectionChange<RealmResults<E>>> changesetsFrom(DynamicRealm dynamicRealm, final RealmResults<E> realmResults) {
        final RealmConfiguration configuration = dynamicRealm.getConfiguration();
        return Observable.create(new ObservableOnSubscribe<CollectionChange<RealmResults<E>>>() { // from class: io.realm.rx.RealmObservableFactory.9
            public void subscribe(final ObservableEmitter<CollectionChange<RealmResults<E>>> observableEmitter) throws Exception {
                final DynamicRealm instance = DynamicRealm.getInstance(configuration);
                ((StrongReferenceCounter) RealmObservableFactory.this.resultsRefs.get()).acquireReference(realmResults);
                final OrderedRealmCollectionChangeListener<RealmResults<E>> orderedRealmCollectionChangeListener = new OrderedRealmCollectionChangeListener<RealmResults<E>>() { // from class: io.realm.rx.RealmObservableFactory.9.1
                    public void onChange(RealmResults<E> realmResults2, OrderedCollectionChangeSet orderedCollectionChangeSet) {
                        if (!observableEmitter.isDisposed()) {
                            observableEmitter.onNext(new CollectionChange(realmResults2, orderedCollectionChangeSet));
                        }
                    }
                };
                realmResults.addChangeListener(orderedRealmCollectionChangeListener);
                observableEmitter.setDisposable(Disposables.fromRunnable(new Runnable() { // from class: io.realm.rx.RealmObservableFactory.9.2
                    @Override // java.lang.Runnable
                    public void run() {
                        realmResults.removeChangeListener(orderedRealmCollectionChangeListener);
                        instance.close();
                        ((StrongReferenceCounter) RealmObservableFactory.this.resultsRefs.get()).releaseReference(realmResults);
                    }
                }));
                observableEmitter.onNext(new CollectionChange(realmResults, null));
            }
        });
    }

    @Override // io.realm.p458rx.RxObservableFactory
    public <E> Observable<CollectionChange<RealmList<E>>> changesetsFrom(Realm realm, final RealmList<E> realmList) {
        final RealmConfiguration configuration = realm.getConfiguration();
        return Observable.create(new ObservableOnSubscribe<CollectionChange<RealmList<E>>>() { // from class: io.realm.rx.RealmObservableFactory.11
            public void subscribe(final ObservableEmitter<CollectionChange<RealmList<E>>> observableEmitter) throws Exception {
                final Realm instance = Realm.getInstance(configuration);
                ((StrongReferenceCounter) RealmObservableFactory.this.listRefs.get()).acquireReference(realmList);
                final OrderedRealmCollectionChangeListener<RealmList<E>> orderedRealmCollectionChangeListener = new OrderedRealmCollectionChangeListener<RealmList<E>>() { // from class: io.realm.rx.RealmObservableFactory.11.1
                    public void onChange(RealmList<E> realmList2, OrderedCollectionChangeSet orderedCollectionChangeSet) {
                        if (!observableEmitter.isDisposed()) {
                            observableEmitter.onNext(new CollectionChange(realmList2, orderedCollectionChangeSet));
                        }
                    }
                };
                realmList.addChangeListener(orderedRealmCollectionChangeListener);
                observableEmitter.setDisposable(Disposables.fromRunnable(new Runnable() { // from class: io.realm.rx.RealmObservableFactory.11.2
                    @Override // java.lang.Runnable
                    public void run() {
                        realmList.removeChangeListener(orderedRealmCollectionChangeListener);
                        instance.close();
                        ((StrongReferenceCounter) RealmObservableFactory.this.listRefs.get()).releaseReference(realmList);
                    }
                }));
                observableEmitter.onNext(new CollectionChange(realmList, null));
            }
        });
    }

    @Override // io.realm.p458rx.RxObservableFactory
    public <E extends RealmModel> Observable<ObjectChange<E>> changesetsFrom(Realm realm, final E e) {
        final RealmConfiguration configuration = realm.getConfiguration();
        return Observable.create(new ObservableOnSubscribe<ObjectChange<E>>() { // from class: io.realm.rx.RealmObservableFactory.15
            public void subscribe(final ObservableEmitter<ObjectChange<E>> observableEmitter) throws Exception {
                final Realm instance = Realm.getInstance(configuration);
                ((StrongReferenceCounter) RealmObservableFactory.this.objectRefs.get()).acquireReference(e);
                final RealmObjectChangeListener<E> realmObjectChangeListener = new RealmObjectChangeListener<E>() { // from class: io.realm.rx.RealmObservableFactory.15.1
                    /* JADX WARN: Incorrect types in method signature: (TE;Lio/realm/ObjectChangeSet;)V */
                    @Override // io.realm.RealmObjectChangeListener
                    public void onChange(RealmModel realmModel, ObjectChangeSet objectChangeSet) {
                        if (!observableEmitter.isDisposed()) {
                            observableEmitter.onNext(new ObjectChange(realmModel, objectChangeSet));
                        }
                    }
                };
                RealmObject.addChangeListener(e, (RealmObjectChangeListener<RealmModel>) realmObjectChangeListener);
                observableEmitter.setDisposable(Disposables.fromRunnable(new Runnable() { // from class: io.realm.rx.RealmObservableFactory.15.2
                    @Override // java.lang.Runnable
                    public void run() {
                        RealmObject.removeChangeListener(e, realmObjectChangeListener);
                        instance.close();
                        ((StrongReferenceCounter) RealmObservableFactory.this.objectRefs.get()).releaseReference(e);
                    }
                }));
                observableEmitter.onNext(new ObjectChange(e, null));
            }
        });
    }

    @Override // io.realm.p458rx.RxObservableFactory
    public <E> Observable<CollectionChange<RealmResults<E>>> changesetsFrom(Realm realm, final RealmResults<E> realmResults) {
        final RealmConfiguration configuration = realm.getConfiguration();
        return Observable.create(new ObservableOnSubscribe<CollectionChange<RealmResults<E>>>() { // from class: io.realm.rx.RealmObservableFactory.7
            public void subscribe(final ObservableEmitter<CollectionChange<RealmResults<E>>> observableEmitter) throws Exception {
                final Realm instance = Realm.getInstance(configuration);
                ((StrongReferenceCounter) RealmObservableFactory.this.resultsRefs.get()).acquireReference(realmResults);
                final OrderedRealmCollectionChangeListener<RealmResults<E>> orderedRealmCollectionChangeListener = new OrderedRealmCollectionChangeListener<RealmResults<E>>() { // from class: io.realm.rx.RealmObservableFactory.7.1
                    public void onChange(RealmResults<E> realmResults2, OrderedCollectionChangeSet orderedCollectionChangeSet) {
                        if (!observableEmitter.isDisposed()) {
                            observableEmitter.onNext(new CollectionChange(realmResults, orderedCollectionChangeSet));
                        }
                    }
                };
                realmResults.addChangeListener(orderedRealmCollectionChangeListener);
                observableEmitter.setDisposable(Disposables.fromRunnable(new Runnable() { // from class: io.realm.rx.RealmObservableFactory.7.2
                    @Override // java.lang.Runnable
                    public void run() {
                        realmResults.removeChangeListener(orderedRealmCollectionChangeListener);
                        instance.close();
                        ((StrongReferenceCounter) RealmObservableFactory.this.resultsRefs.get()).releaseReference(realmResults);
                    }
                }));
                observableEmitter.onNext(new CollectionChange(realmResults, null));
            }
        });
    }

    public boolean equals(Object obj) {
        return obj instanceof RealmObservableFactory;
    }

    @Override // io.realm.p458rx.RxObservableFactory
    public Flowable<DynamicRealm> from(DynamicRealm dynamicRealm) {
        final RealmConfiguration configuration = dynamicRealm.getConfiguration();
        return Flowable.create(new FlowableOnSubscribe<DynamicRealm>() { // from class: io.realm.rx.RealmObservableFactory.5
            public void subscribe(final FlowableEmitter<DynamicRealm> flowableEmitter) throws Exception {
                final DynamicRealm instance = DynamicRealm.getInstance(configuration);
                final RealmChangeListener<DynamicRealm> realmChangeListener = new RealmChangeListener<DynamicRealm>() { // from class: io.realm.rx.RealmObservableFactory.5.1
                    public void onChange(DynamicRealm dynamicRealm2) {
                        if (!flowableEmitter.isCancelled()) {
                            flowableEmitter.onNext(dynamicRealm2);
                        }
                    }
                };
                instance.addChangeListener(realmChangeListener);
                flowableEmitter.setDisposable(Disposables.fromRunnable(new Runnable() { // from class: io.realm.rx.RealmObservableFactory.5.2
                    @Override // java.lang.Runnable
                    public void run() {
                        instance.removeChangeListener(realmChangeListener);
                        instance.close();
                    }
                }));
                flowableEmitter.onNext(instance);
            }
        }, BACK_PRESSURE_STRATEGY);
    }

    @Override // io.realm.p458rx.RxObservableFactory
    public Flowable<DynamicRealmObject> from(DynamicRealm dynamicRealm, final DynamicRealmObject dynamicRealmObject) {
        final RealmConfiguration configuration = dynamicRealm.getConfiguration();
        return Flowable.create(new FlowableOnSubscribe<DynamicRealmObject>() { // from class: io.realm.rx.RealmObservableFactory.16
            public void subscribe(final FlowableEmitter<DynamicRealmObject> flowableEmitter) throws Exception {
                final DynamicRealm instance = DynamicRealm.getInstance(configuration);
                ((StrongReferenceCounter) RealmObservableFactory.this.objectRefs.get()).acquireReference(dynamicRealmObject);
                final RealmChangeListener<DynamicRealmObject> realmChangeListener = new RealmChangeListener<DynamicRealmObject>() { // from class: io.realm.rx.RealmObservableFactory.16.1
                    public void onChange(DynamicRealmObject dynamicRealmObject2) {
                        if (!flowableEmitter.isCancelled()) {
                            flowableEmitter.onNext(dynamicRealmObject2);
                        }
                    }
                };
                RealmObject.addChangeListener(dynamicRealmObject, realmChangeListener);
                flowableEmitter.setDisposable(Disposables.fromRunnable(new Runnable() { // from class: io.realm.rx.RealmObservableFactory.16.2
                    @Override // java.lang.Runnable
                    public void run() {
                        RealmObject.removeChangeListener(dynamicRealmObject, realmChangeListener);
                        instance.close();
                        ((StrongReferenceCounter) RealmObservableFactory.this.objectRefs.get()).releaseReference(dynamicRealmObject);
                    }
                }));
                flowableEmitter.onNext(dynamicRealmObject);
            }
        }, BACK_PRESSURE_STRATEGY);
    }

    @Override // io.realm.p458rx.RxObservableFactory
    public <E> Flowable<RealmList<E>> from(DynamicRealm dynamicRealm, final RealmList<E> realmList) {
        final RealmConfiguration configuration = dynamicRealm.getConfiguration();
        return Flowable.create(new FlowableOnSubscribe<RealmList<E>>() { // from class: io.realm.rx.RealmObservableFactory.12
            public void subscribe(final FlowableEmitter<RealmList<E>> flowableEmitter) throws Exception {
                final DynamicRealm instance = DynamicRealm.getInstance(configuration);
                ((StrongReferenceCounter) RealmObservableFactory.this.listRefs.get()).acquireReference(realmList);
                final RealmChangeListener<RealmList<E>> realmChangeListener = new RealmChangeListener<RealmList<E>>() { // from class: io.realm.rx.RealmObservableFactory.12.1
                    public void onChange(RealmList<E> realmList2) {
                        if (!flowableEmitter.isCancelled()) {
                            flowableEmitter.onNext(realmList);
                        }
                    }
                };
                realmList.addChangeListener(realmChangeListener);
                flowableEmitter.setDisposable(Disposables.fromRunnable(new Runnable() { // from class: io.realm.rx.RealmObservableFactory.12.2
                    @Override // java.lang.Runnable
                    public void run() {
                        realmList.removeChangeListener(realmChangeListener);
                        instance.close();
                        ((StrongReferenceCounter) RealmObservableFactory.this.listRefs.get()).releaseReference(realmList);
                    }
                }));
                flowableEmitter.onNext(realmList);
            }
        }, BACK_PRESSURE_STRATEGY);
    }

    @Override // io.realm.p458rx.RxObservableFactory
    public <E> Flowable<RealmResults<E>> from(DynamicRealm dynamicRealm, final RealmResults<E> realmResults) {
        final RealmConfiguration configuration = dynamicRealm.getConfiguration();
        return Flowable.create(new FlowableOnSubscribe<RealmResults<E>>() { // from class: io.realm.rx.RealmObservableFactory.8
            public void subscribe(final FlowableEmitter<RealmResults<E>> flowableEmitter) throws Exception {
                final DynamicRealm instance = DynamicRealm.getInstance(configuration);
                ((StrongReferenceCounter) RealmObservableFactory.this.resultsRefs.get()).acquireReference(realmResults);
                final RealmChangeListener<RealmResults<E>> realmChangeListener = new RealmChangeListener<RealmResults<E>>() { // from class: io.realm.rx.RealmObservableFactory.8.1
                    public void onChange(RealmResults<E> realmResults2) {
                        if (!flowableEmitter.isCancelled()) {
                            flowableEmitter.onNext(realmResults2);
                        }
                    }
                };
                realmResults.addChangeListener(realmChangeListener);
                flowableEmitter.setDisposable(Disposables.fromRunnable(new Runnable() { // from class: io.realm.rx.RealmObservableFactory.8.2
                    @Override // java.lang.Runnable
                    public void run() {
                        realmResults.removeChangeListener(realmChangeListener);
                        instance.close();
                        ((StrongReferenceCounter) RealmObservableFactory.this.resultsRefs.get()).releaseReference(realmResults);
                    }
                }));
                flowableEmitter.onNext(realmResults);
            }
        }, BACK_PRESSURE_STRATEGY);
    }

    @Override // io.realm.p458rx.RxObservableFactory
    public Flowable<Realm> from(Realm realm) {
        final RealmConfiguration configuration = realm.getConfiguration();
        return Flowable.create(new FlowableOnSubscribe<Realm>() { // from class: io.realm.rx.RealmObservableFactory.4
            public void subscribe(final FlowableEmitter<Realm> flowableEmitter) throws Exception {
                final Realm instance = Realm.getInstance(configuration);
                final RealmChangeListener<Realm> realmChangeListener = new RealmChangeListener<Realm>() { // from class: io.realm.rx.RealmObservableFactory.4.1
                    public void onChange(Realm realm2) {
                        if (!flowableEmitter.isCancelled()) {
                            flowableEmitter.onNext(realm2);
                        }
                    }
                };
                instance.addChangeListener(realmChangeListener);
                flowableEmitter.setDisposable(Disposables.fromRunnable(new Runnable() { // from class: io.realm.rx.RealmObservableFactory.4.2
                    @Override // java.lang.Runnable
                    public void run() {
                        instance.removeChangeListener(realmChangeListener);
                        instance.close();
                    }
                }));
                flowableEmitter.onNext(instance);
            }
        }, BACK_PRESSURE_STRATEGY);
    }

    @Override // io.realm.p458rx.RxObservableFactory
    public <E> Flowable<RealmList<E>> from(Realm realm, final RealmList<E> realmList) {
        final RealmConfiguration configuration = realm.getConfiguration();
        return Flowable.create(new FlowableOnSubscribe<RealmList<E>>() { // from class: io.realm.rx.RealmObservableFactory.10
            public void subscribe(final FlowableEmitter<RealmList<E>> flowableEmitter) throws Exception {
                final Realm instance = Realm.getInstance(configuration);
                ((StrongReferenceCounter) RealmObservableFactory.this.listRefs.get()).acquireReference(realmList);
                final RealmChangeListener<RealmList<E>> realmChangeListener = new RealmChangeListener<RealmList<E>>() { // from class: io.realm.rx.RealmObservableFactory.10.1
                    public void onChange(RealmList<E> realmList2) {
                        if (!flowableEmitter.isCancelled()) {
                            flowableEmitter.onNext(realmList);
                        }
                    }
                };
                realmList.addChangeListener(realmChangeListener);
                flowableEmitter.setDisposable(Disposables.fromRunnable(new Runnable() { // from class: io.realm.rx.RealmObservableFactory.10.2
                    @Override // java.lang.Runnable
                    public void run() {
                        realmList.removeChangeListener(realmChangeListener);
                        instance.close();
                        ((StrongReferenceCounter) RealmObservableFactory.this.listRefs.get()).releaseReference(realmList);
                    }
                }));
                flowableEmitter.onNext(realmList);
            }
        }, BACK_PRESSURE_STRATEGY);
    }

    @Override // io.realm.p458rx.RxObservableFactory
    public <E extends RealmModel> Flowable<E> from(Realm realm, final E e) {
        final RealmConfiguration configuration = realm.getConfiguration();
        return Flowable.create(new FlowableOnSubscribe<E>() { // from class: io.realm.rx.RealmObservableFactory.14
            public void subscribe(final FlowableEmitter<E> flowableEmitter) throws Exception {
                final Realm instance = Realm.getInstance(configuration);
                ((StrongReferenceCounter) RealmObservableFactory.this.objectRefs.get()).acquireReference(e);
                final RealmChangeListener<E> realmChangeListener = new RealmChangeListener<E>() { // from class: io.realm.rx.RealmObservableFactory.14.1
                    /* JADX WARN: Incorrect types in method signature: (TE;)V */
                    public void onChange(RealmModel realmModel) {
                        if (!flowableEmitter.isCancelled()) {
                            flowableEmitter.onNext(realmModel);
                        }
                    }
                };
                RealmObject.addChangeListener(e, (RealmChangeListener<RealmModel>) realmChangeListener);
                flowableEmitter.setDisposable(Disposables.fromRunnable(new Runnable() { // from class: io.realm.rx.RealmObservableFactory.14.2
                    @Override // java.lang.Runnable
                    public void run() {
                        RealmObject.removeChangeListener(e, realmChangeListener);
                        instance.close();
                        ((StrongReferenceCounter) RealmObservableFactory.this.objectRefs.get()).releaseReference(e);
                    }
                }));
                flowableEmitter.onNext(e);
            }
        }, BACK_PRESSURE_STRATEGY);
    }

    @Override // io.realm.p458rx.RxObservableFactory
    public <E> Flowable<RealmResults<E>> from(Realm realm, final RealmResults<E> realmResults) {
        final RealmConfiguration configuration = realm.getConfiguration();
        return Flowable.create(new FlowableOnSubscribe<RealmResults<E>>() { // from class: io.realm.rx.RealmObservableFactory.6
            public void subscribe(final FlowableEmitter<RealmResults<E>> flowableEmitter) throws Exception {
                final Realm instance = Realm.getInstance(configuration);
                ((StrongReferenceCounter) RealmObservableFactory.this.resultsRefs.get()).acquireReference(realmResults);
                final RealmChangeListener<RealmResults<E>> realmChangeListener = new RealmChangeListener<RealmResults<E>>() { // from class: io.realm.rx.RealmObservableFactory.6.1
                    public void onChange(RealmResults<E> realmResults2) {
                        if (!flowableEmitter.isCancelled()) {
                            flowableEmitter.onNext(realmResults2);
                        }
                    }
                };
                realmResults.addChangeListener(realmChangeListener);
                flowableEmitter.setDisposable(Disposables.fromRunnable(new Runnable() { // from class: io.realm.rx.RealmObservableFactory.6.2
                    @Override // java.lang.Runnable
                    public void run() {
                        realmResults.removeChangeListener(realmChangeListener);
                        instance.close();
                        ((StrongReferenceCounter) RealmObservableFactory.this.resultsRefs.get()).releaseReference(realmResults);
                    }
                }));
                flowableEmitter.onNext(realmResults);
            }
        }, BACK_PRESSURE_STRATEGY);
    }

    @Override // io.realm.p458rx.RxObservableFactory
    public <E> Single<RealmQuery<E>> from(DynamicRealm dynamicRealm, RealmQuery<E> realmQuery) {
        throw new RuntimeException("RealmQuery not supported yet.");
    }

    @Override // io.realm.p458rx.RxObservableFactory
    public <E> Single<RealmQuery<E>> from(Realm realm, RealmQuery<E> realmQuery) {
        throw new RuntimeException("RealmQuery not supported yet.");
    }

    public int hashCode() {
        return 37;
    }
}
