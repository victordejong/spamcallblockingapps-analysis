.class public final enum Li/c/b0/e/f/b/h;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Li/c/b0/e/f/b/h;",
        ">;",
        "Li/c/b0/d/g<",
        "Lo/a/c;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Li/c/b0/e/f/b/h;

.field public static final enum INSTANCE:Li/c/b0/e/f/b/h;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Li/c/b0/e/f/b/h;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Li/c/b0/e/f/b/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Li/c/b0/e/f/b/h;->INSTANCE:Li/c/b0/e/f/b/h;

    const/4 v1, 0x1

    new-array v1, v1, [Li/c/b0/e/f/b/h;

    aput-object v0, v1, v2

    .line 2
    sput-object v1, Li/c/b0/e/f/b/h;->$VALUES:[Li/c/b0/e/f/b/h;

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

.method public static valueOf(Ljava/lang/String;)Li/c/b0/e/f/b/h;
    .locals 1

    .line 1
    const-class v0, Li/c/b0/e/f/b/h;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Li/c/b0/e/f/b/h;

    return-object p0
.end method

.method public static values()[Li/c/b0/e/f/b/h;
    .locals 1

    .line 1
    sget-object v0, Li/c/b0/e/f/b/h;->$VALUES:[Li/c/b0/e/f/b/h;

    invoke-virtual {v0}, [Li/c/b0/e/f/b/h;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Li/c/b0/e/f/b/h;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    check-cast p1, Lo/a/c;

    invoke-virtual {p0, p1}, Li/c/b0/e/f/b/h;->accept(Lo/a/c;)V

    return-void
.end method

.method public accept(Lo/a/c;)V
    .locals 2

    const-wide v0, 0x7fffffffffffffffL

    .line 2
    invoke-interface {p1, v0, v1}, Lo/a/c;->request(J)V

    return-void
.end method
