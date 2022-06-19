.class public final Le/a/e/a/v3$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/e/a/v3;->s(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Lq3/a/i0;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.ui.dialogs.QaMockImDialog$addMessagesToExistingConversations$2$1$1"
    f = "QaMockImDialog.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Le/a/e/a/v3;

.field public final synthetic f:Lq3/a/i0;

.field public final synthetic g:Ljava/util/ArrayList;

.field public final synthetic h:Ljava/lang/String;

.field public final synthetic i:Ls1/z/c/a0;

.field public final synthetic j:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Ls1/w/d;Le/a/e/a/v3;Lq3/a/i0;Ljava/util/ArrayList;Ljava/lang/String;Ls1/z/c/a0;Landroid/content/ContentResolver;)V
    .locals 0

    iput-object p2, p0, Le/a/e/a/v3$a;->e:Le/a/e/a/v3;

    iput-object p3, p0, Le/a/e/a/v3$a;->f:Lq3/a/i0;

    iput-object p4, p0, Le/a/e/a/v3$a;->g:Ljava/util/ArrayList;

    iput-object p5, p0, Le/a/e/a/v3$a;->h:Ljava/lang/String;

    iput-object p6, p0, Le/a/e/a/v3$a;->i:Ls1/z/c/a0;

    iput-object p7, p0, Le/a/e/a/v3$a;->j:Landroid/content/ContentResolver;

    const/4 p2, 0x2

    invoke-direct {p0, p2, p1}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ls1/w/d<",
            "*>;)",
            "Ls1/w/d<",
            "Ls1/s;",
            ">;"
        }
    .end annotation

    const-string p1, "completion"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/e/a/v3$a;

    iget-object v2, p0, Le/a/e/a/v3$a;->e:Le/a/e/a/v3;

    iget-object v3, p0, Le/a/e/a/v3$a;->f:Lq3/a/i0;

    iget-object v4, p0, Le/a/e/a/v3$a;->g:Ljava/util/ArrayList;

    iget-object v5, p0, Le/a/e/a/v3$a;->h:Ljava/lang/String;

    iget-object v6, p0, Le/a/e/a/v3$a;->i:Ls1/z/c/a0;

    iget-object v7, p0, Le/a/e/a/v3$a;->j:Landroid/content/ContentResolver;

    move-object v0, p1

    move-object v1, p2

    invoke-direct/range {v0 .. v7}, Le/a/e/a/v3$a;-><init>(Ls1/w/d;Le/a/e/a/v3;Lq3/a/i0;Ljava/util/ArrayList;Ljava/lang/String;Ls1/z/c/a0;Landroid/content/ContentResolver;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ls1/w/d;

    invoke-virtual {p0, p1, p2}, Le/a/e/a/v3$a;->i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;

    move-result-object p1

    check-cast p1, Le/a/e/a/v3$a;

    sget-object p2, Ls1/s;->a:Ls1/s;

    .line 1
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p1, Le/a/e/a/v3$a;->e:Le/a/e/a/v3;

    iget-object v0, v0, Le/a/e/a/v3;->m:Landroid/app/ProgressDialog;

    iget-object p1, p1, Le/a/e/a/v3$a;->i:Ls1/z/c/a0;

    iget p1, p1, Ls1/z/c/a0;->a:I

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setProgress(I)V

    return-object p2
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Le/a/e/a/v3$a;->e:Le/a/e/a/v3;

    iget-object p1, p1, Le/a/e/a/v3;->m:Landroid/app/ProgressDialog;

    iget-object v0, p0, Le/a/e/a/v3$a;->i:Ls1/z/c/a0;

    iget v0, v0, Ls1/z/c/a0;->a:I

    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 3
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
