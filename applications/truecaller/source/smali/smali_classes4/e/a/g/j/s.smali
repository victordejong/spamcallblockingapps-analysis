.class public final Le/a/g/j/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/g/j/r;


# instance fields
.field public final a:Le/a/p5/a0;

.field public final b:Le/a/r2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/r2/f<",
            "Le/a/o5/x;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/a/p5/a0;Le/a/r2/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/p5/a0;",
            "Le/a/r2/f<",
            "Le/a/o5/x;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "permissionUtil"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contactsManager"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/g/j/s;->a:Le/a/p5/a0;

    iput-object p2, p0, Le/a/g/j/s;->b:Le/a/r2/f;

    return-void
.end method


# virtual methods
.method public a(Landroidx/fragment/app/FragmentManager;Lcom/truecaller/data/entity/Contact;Le/a/g/j/t;)V
    .locals 1

    const-string v0, "fragmentManager"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contact"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    new-instance v0, Le/a/g/j/s$a;

    invoke-direct {v0, p3, p2}, Le/a/g/j/s$a;-><init>(Le/a/g/j/t;Lcom/truecaller/data/entity/Contact;)V

    invoke-static {p2, v0}, Le/a/o5/j1;->QA(Lcom/truecaller/data/entity/Contact;Le/a/o5/j1$a;)Le/a/o5/j1;

    move-result-object p2

    .line 2
    sget p3, Le/a/o5/j1;->e:I
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const-string p3, "contact_save"

    :try_start_1
    invoke-virtual {p2, p1, p3}, Ln3/r/a/k;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "Cannot find an activity to insert contact"

    .line 3
    invoke-static {p1, p2}, Le/a/c/p/a;->J1(Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
