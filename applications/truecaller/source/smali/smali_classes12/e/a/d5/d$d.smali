.class public final synthetic Le/a/d5/d$d;
.super Ls1/z/c/j;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d5/d;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1019
    name = null
.end annotation

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
.field public static final j:Le/a/d5/d$d;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Le/a/d5/d$d;

    invoke-direct {v0}, Le/a/d5/d$d;-><init>()V

    sput-object v0, Le/a/d5/d$d;->j:Le/a/d5/d$d;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const-class v2, Le/a/d5/f;

    const/4 v1, 0x2

    const-string v3, "nullCurrentFragOrTypeMatch"

    const-string v4, "nullCurrentFragOrTypeMatch(Lcom/truecaller/startup_dialogs/StartupDialogResolver;Landroidx/fragment/app/DialogFragment;)Z"

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Ls1/z/c/j;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Le/a/d5/b;

    check-cast p2, Ln3/r/a/k;

    const-string v0, "p1"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    .line 3
    invoke-static {p2}, Le/a/d5/f;->a(Ln3/r/a/k;)Lcom/truecaller/startup_dialogs/StartupDialogType;

    move-result-object p2

    invoke-interface {p1}, Le/a/d5/b;->b()Lcom/truecaller/startup_dialogs/StartupDialogType;

    move-result-object p1

    if-ne p2, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 4
    :goto_1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
