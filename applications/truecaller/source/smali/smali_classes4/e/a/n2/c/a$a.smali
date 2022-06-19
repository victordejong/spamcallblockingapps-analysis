.class public final Le/a/n2/c/a$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/n2/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ljava/util/List<",
        "+",
        "Ls1/a/c<",
        "+",
        "Ln3/b/a/h;",
        ">;>;>;"
    }
.end annotation


# static fields
.field public static final b:Le/a/n2/c/a$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Le/a/n2/c/a$a;

    invoke-direct {v0}, Le/a/n2/c/a$a;-><init>()V

    sput-object v0, Le/a/n2/c/a$a;->b:Le/a/n2/c/a$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ls1/a/c;

    .line 1
    const-class v1, Lcom/truecaller/acs/ui/fullscreen/AfterCallScreenActivity;

    invoke-static {v1}, Ls1/z/c/d0;->a(Ljava/lang/Class;)Ls1/a/c;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 2
    const-class v1, Lcom/truecaller/acs/ui/popup/AfterCallPopupActivity;

    invoke-static {v1}, Ls1/z/c/d0;->a(Ljava/lang/Class;)Ls1/a/c;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 3
    const-class v1, Lcom/truecaller/aftercall/AfterCallPromotionActivity;

    invoke-static {v1}, Ls1/z/c/d0;->a(Ljava/lang/Class;)Ls1/a/c;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 4
    invoke-static {v0}, Ls1/u/i;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
