package androidx.databinding;

import androidx.databinding.Observable;
/* loaded from: classes-dex2jar.jar:androidx/databinding/BaseObservableField.class */
public abstract class BaseObservableField extends BaseObservable {

    /* loaded from: classes-dex2jar.jar:androidx/databinding/BaseObservableField$DependencyCallback.class */
    public class DependencyCallback extends Observable.OnPropertyChangedCallback {
        public DependencyCallback() {
        }

        @Override // androidx.databinding.Observable.OnPropertyChangedCallback
        public void onPropertyChanged(Observable observable, int i) {
            BaseObservableField.this.notifyChange();
        }
    }

    public BaseObservableField() {
    }

    public BaseObservableField(Observable... observableArr) {
        if (!(observableArr == null || observableArr.length == 0)) {
            DependencyCallback dependencyCallback = new DependencyCallback();
            for (Observable observable : observableArr) {
                observable.addOnPropertyChangedCallback(dependencyCallback);
            }
        }
    }
}
