.class public final synthetic Le/a/e/c/c1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/o5/j1$a;


# instance fields
.field public final synthetic a:Le/a/e/c/s1;


# direct methods
.method public synthetic constructor <init>(Le/a/e/c/s1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/e/c/c1;->a:Le/a/e/c/s1;

    return-void
.end method


# virtual methods
.method public final a(Lcom/truecaller/data/entity/Contact;[B)V
    .locals 1

    iget-object v0, p0, Le/a/e/c/c1;->a:Le/a/e/c/s1;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1, p2}, Le/a/o5/q;->d(Lcom/truecaller/data/entity/Contact;[B)Landroid/content/Intent;

    move-result-object p1

    const/16 p2, 0x15

    invoke-static {v0, p1, p2}, Le/a/b0/q/t;->l(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)Z

    return-void
.end method
