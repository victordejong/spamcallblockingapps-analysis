.class public final synthetic Le/a/e/c/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Le/a/e/c/s1;


# direct methods
.method public synthetic constructor <init>(Le/a/e/c/s1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/e/c/m;->a:Le/a/e/c/s1;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Le/a/e/c/m;->a:Le/a/e/c/s1;

    .line 1
    iget-object v0, p1, Le/a/e/c/s1;->F0:Lcom/truecaller/data/entity/Contact;

    invoke-virtual {v0}, Lcom/truecaller/data/entity/Contact;->P()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Le/a/e/a2;->S(Landroid/content/Context;Ljava/lang/String;Z)Z

    return-void
.end method
