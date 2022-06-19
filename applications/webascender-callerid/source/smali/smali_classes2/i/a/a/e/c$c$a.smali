.class final enum Li/a/a/e/c$c$a;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Li/a/a/e/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/a/a/e/c$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Li/a/a/e/c$c$a;",
        ">;",
        "Li/a/a/e/b;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Li/a/a/e/c$c$a;

.field public static final enum INSTANCE:Li/a/a/e/c$c$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Li/a/a/e/c$c$a;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Li/a/a/e/c$c$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Li/a/a/e/c$c$a;->INSTANCE:Li/a/a/e/c$c$a;

    const/4 v1, 0x1

    new-array v1, v1, [Li/a/a/e/c$c$a;

    aput-object v0, v1, v2

    .line 2
    sput-object v1, Li/a/a/e/c$c$a;->$VALUES:[Li/a/a/e/c$c$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Li/a/a/e/c$c$a;
    .locals 1

    .line 1
    const-class v0, Li/a/a/e/c$c$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Li/a/a/e/c$c$a;

    return-object p0
.end method

.method public static values()[Li/a/a/e/c$c$a;
    .locals 1

    .line 1
    sget-object v0, Li/a/a/e/c$c$a;->$VALUES:[Li/a/a/e/c$c$a;

    invoke-virtual {v0}, [Li/a/a/e/c$c$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Li/a/a/e/c$c$a;

    return-object v0
.end method


# virtual methods
.method public add(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string p2, "Counters can only increase"

    .line 1
    invoke-static {p1, p2}, Li/a/a/d/d;->a(ZLjava/lang/String;)V

    return-void
.end method

.method public unbind()V
    .locals 0

    return-void
.end method
