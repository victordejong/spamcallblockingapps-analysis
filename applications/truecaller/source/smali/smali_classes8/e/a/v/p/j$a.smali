.class public final Le/a/v/p/j$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/o5/j1$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/v/p/j;->a(Lcom/truecaller/data/entity/Contact;Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/Fragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/fragment/app/Fragment;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;)V
    .locals 0

    iput-object p1, p0, Le/a/v/p/j$a;->a:Landroidx/fragment/app/Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/truecaller/data/entity/Contact;[B)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/v/p/j$a;->a:Landroidx/fragment/app/Fragment;

    .line 2
    invoke-static {p1, p2}, Le/a/o5/q;->d(Lcom/truecaller/data/entity/Contact;[B)Landroid/content/Intent;

    move-result-object p1

    const/16 p2, 0x15

    .line 3
    invoke-static {v0, p1, p2}, Le/a/b0/q/t;->l(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)Z

    return-void
.end method
