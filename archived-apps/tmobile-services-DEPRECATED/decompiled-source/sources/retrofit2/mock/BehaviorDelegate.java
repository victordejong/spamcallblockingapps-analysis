package retrofit2.mock;

import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Proxy;
import java.lang.reflect.Type;
import java.lang.reflect.WildcardType;
import java.util.concurrent.ExecutorService;
import javax.annotation.Nullable;
import kotlin.coroutines.Continuation;
import retrofit2.Call;
import retrofit2.KotlinExtensions;
import retrofit2.Response;
import retrofit2.Retrofit;
/* loaded from: classes2-dex2jar.jar:retrofit2/mock/BehaviorDelegate.class */
public final class BehaviorDelegate<T> {
    private final NetworkBehavior behavior;
    private final ExecutorService executor;
    final Retrofit retrofit;
    private final Class<T> service;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:retrofit2/mock/BehaviorDelegate$CallParameterizedTypeImpl.class */
    public static final class CallParameterizedTypeImpl implements ParameterizedType {
        private final Type bodyType;

        CallParameterizedTypeImpl(Type type) {
            this.bodyType = type;
        }

        @Override // java.lang.reflect.ParameterizedType
        public Type[] getActualTypeArguments() {
            return new Type[]{this.bodyType};
        }

        @Override // java.lang.reflect.ParameterizedType
        @Nullable
        public Type getOwnerType() {
            return null;
        }

        @Override // java.lang.reflect.ParameterizedType
        public Type getRawType() {
            return Call.class;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:retrofit2/mock/BehaviorDelegate$ServiceMethodAdapterInfo.class */
    public static class ServiceMethodAdapterInfo {
        final boolean isSuspend;
        final Type responseType;
        final boolean wantsResponse;

        ServiceMethodAdapterInfo(boolean z, boolean z2, Type type) {
            this.isSuspend = z;
            this.wantsResponse = z2;
            this.responseType = type;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public BehaviorDelegate(Retrofit retrofit, NetworkBehavior networkBehavior, ExecutorService executorService, Class<T> cls) {
        this.retrofit = retrofit;
        this.behavior = networkBehavior;
        this.executor = executorService;
        this.service = cls;
    }

    private static ServiceMethodAdapterInfo parseServiceMethodAdapterInfo(Method method) {
        Type[] genericParameterTypes = method.getGenericParameterTypes();
        if (genericParameterTypes.length != 0) {
            Type type = genericParameterTypes[genericParameterTypes.length - 1];
            if (type instanceof ParameterizedType) {
                ParameterizedType parameterizedType = (ParameterizedType) type;
                try {
                    if (parameterizedType.getRawType() == Continuation.class) {
                        Type type2 = parameterizedType.getActualTypeArguments()[0];
                        Type type3 = type2;
                        if (type2 instanceof WildcardType) {
                            type3 = ((WildcardType) type2).getLowerBounds()[0];
                        }
                        if (type3 instanceof ParameterizedType) {
                            ParameterizedType parameterizedType2 = (ParameterizedType) type3;
                            if (parameterizedType2.getRawType() == Response.class) {
                                return new ServiceMethodAdapterInfo(true, true, new CallParameterizedTypeImpl(parameterizedType2.getActualTypeArguments()[0]));
                            }
                        }
                        return new ServiceMethodAdapterInfo(true, false, new CallParameterizedTypeImpl(type3));
                    }
                } catch (NoClassDefFoundError e) {
                }
            }
        }
        return new ServiceMethodAdapterInfo(false, false, method.getGenericReturnType());
    }

    /* renamed from: a */
    public /* synthetic */ Object m1a(Call call, Object obj, Method method, Object[] objArr) throws Throwable {
        ServiceMethodAdapterInfo parseServiceMethodAdapterInfo = parseServiceMethodAdapterInfo(method);
        Object adapt = this.retrofit.callAdapter(parseServiceMethodAdapterInfo.responseType, method.getAnnotations()).adapt(call);
        if (!parseServiceMethodAdapterInfo.isSuspend) {
            return adapt;
        }
        Call call2 = (Call) adapt;
        Continuation continuation = (Continuation) objArr[objArr.length - 1];
        try {
            return parseServiceMethodAdapterInfo.wantsResponse ? KotlinExtensions.awaitResponse(call2, continuation) : KotlinExtensions.await(call2, continuation);
        } catch (Exception e) {
            return KotlinExtensions.suspendAndThrow(e, continuation);
        }
    }

    public <R> T returning(Call<R> call) {
        final BehaviorCall behaviorCall = new BehaviorCall(this.behavior, this.executor, call);
        return (T) Proxy.newProxyInstance(this.service.getClassLoader(), new Class[]{this.service}, new InvocationHandler() { // from class: retrofit2.mock.a
            @Override // java.lang.reflect.InvocationHandler
            public final Object invoke(Object obj, Method method, Object[] objArr) {
                return BehaviorDelegate.this.m1a(behaviorCall, obj, method, objArr);
            }
        });
    }

    public T returningResponse(@Nullable Object obj) {
        return returning(Calls.response(obj));
    }
}
