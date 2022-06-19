.class public final Le/a/g/j/s$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/o5/j1$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/g/j/s;->a(Landroidx/fragment/app/FragmentManager;Lcom/truecaller/data/entity/Contact;Le/a/g/j/t;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/g/j/t;

.field public final synthetic b:Lcom/truecaller/data/entity/Contact;


# direct methods
.method public constructor <init>(Le/a/g/j/t;Lcom/truecaller/data/entity/Contact;)V
    .locals 0

    iput-object p1, p0, Le/a/g/j/s$a;->a:Le/a/g/j/t;

    iput-object p2, p0, Le/a/g/j/s$a;->b:Lcom/truecaller/data/entity/Contact;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/truecaller/data/entity/Contact;[B)V
    .locals 1

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Le/a/g/j/s$a;->a:Le/a/g/j/t;

    iget-object v0, p0, Le/a/g/j/s$a;->b:Lcom/truecaller/data/entity/Contact;

    invoke-static {v0, p2}, Le/a/o5/q;->d(Lcom/truecaller/data/entity/Contact;[B)Landroid/content/Intent;

    move-result-object p2

    const-string v0, "ContactManager.getInsertIntent(contact, bitmap)"

    invoke-static {p2, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p2}, Le/a/g/j/t;->Ig(Landroid/content/Intent;)V

    return-void
.end method
