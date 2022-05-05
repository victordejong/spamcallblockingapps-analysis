package p000a.p001a.p002a.p003a.p004a.p007c;
/* renamed from: a.a.a.a.a.c.j */
/* loaded from: classes-dex2jar.jar:a/a/a/a/a/c/j.class */
public enum EnumC0066j {
    LOW,
    NORMAL,
    HIGH,
    IMMEDIATE;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static <Y> int m10261a(AbstractC0072o oVar, Y y) {
        return (y instanceof AbstractC0072o ? ((AbstractC0072o) y).getPriority() : NORMAL).ordinal() - oVar.getPriority().ordinal();
    }
}
