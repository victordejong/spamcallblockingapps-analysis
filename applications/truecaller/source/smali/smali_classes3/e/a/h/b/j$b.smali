.class public final Le/a/h/b/j$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/o5/j1$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/h/b/j;->Tq(Lcom/truecaller/data/entity/Contact;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/h/b/j;

.field public final synthetic b:Lcom/truecaller/data/entity/Contact;


# direct methods
.method public constructor <init>(Le/a/h/b/j;Lcom/truecaller/data/entity/Contact;)V
    .locals 0

    iput-object p1, p0, Le/a/h/b/j$b;->a:Le/a/h/b/j;

    iput-object p2, p0, Le/a/h/b/j$b;->b:Lcom/truecaller/data/entity/Contact;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/truecaller/data/entity/Contact;[B)V
    .locals 1

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Le/a/h/b/j$b;->a:Le/a/h/b/j;

    .line 2
    iget-object v0, p0, Le/a/h/b/j$b;->b:Lcom/truecaller/data/entity/Contact;

    invoke-static {v0, p2}, Le/a/o5/q;->d(Lcom/truecaller/data/entity/Contact;[B)Landroid/content/Intent;

    move-result-object p2

    .line 3
    invoke-static {p1, p2}, Le/a/b0/q/t;->o(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)Z

    return-void
.end method
