package p573f.p574a0;

import java.util.List;
import java.util.Map;
import kotlin.reflect.KVisibility;
/* renamed from: f.a0.b */
/* loaded from: classes2-dex2jar.jar:f/a0/b.class */
public interface AbstractC9869b<R> extends AbstractC9868a {
    R call(Object... objArr);

    R callBy(Map<Object, ? extends Object> map);

    List<Object> getParameters();

    AbstractC9889n getReturnType();

    List<Object> getTypeParameters();

    KVisibility getVisibility();

    boolean isAbstract();

    boolean isFinal();

    boolean isOpen();

    boolean isSuspend();
}
