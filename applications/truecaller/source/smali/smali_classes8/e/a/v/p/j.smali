.class public final Le/a/v/p/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/v/p/i;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/truecaller/data/entity/Contact;Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/Fragment;
    .locals 1

    const-string v0, "contact"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resultReceiver"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Le/a/v/p/j$a;

    invoke-direct {v0, p2}, Le/a/v/p/j$a;-><init>(Landroidx/fragment/app/Fragment;)V

    invoke-static {p1, v0}, Le/a/o5/j1;->QA(Lcom/truecaller/data/entity/Contact;Le/a/o5/j1$a;)Le/a/o5/j1;

    move-result-object p1

    const-string p2, "PrepareContactForSaveDia\u2026T\n            )\n        }"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
