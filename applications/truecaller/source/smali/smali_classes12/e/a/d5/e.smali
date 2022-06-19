.class public final synthetic Le/a/d5/e;
.super Ls1/z/c/j;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/j;",
        "Ls1/z/b/p<",
        "Le/a/d5/b;",
        "Ln3/r/a/k;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field public static final j:Le/a/d5/e;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Le/a/d5/e;

    invoke-direct {v0}, Le/a/d5/e;-><init>()V

    sput-object v0, Le/a/d5/e;->j:Le/a/d5/e;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const-class v2, Le/a/d5/f;

    const/4 v1, 0x2

    const-string v3, "any"

    const-string v4, "any(Lcom/truecaller/startup_dialogs/StartupDialogResolver;Landroidx/fragment/app/DialogFragment;)Z"

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Ls1/z/c/j;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Le/a/d5/b;

    check-cast p2, Ln3/r/a/k;

    const-string p2, "p1"

    .line 2
    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method
