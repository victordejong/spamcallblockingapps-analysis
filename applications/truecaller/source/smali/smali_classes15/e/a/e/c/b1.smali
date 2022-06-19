.class public final synthetic Le/a/e/c/b1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Le/a/e/c/s1;


# direct methods
.method public synthetic constructor <init>(Le/a/e/c/s1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/e/c/b1;->a:Le/a/e/c/s1;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object p1, p0, Le/a/e/c/b1;->a:Le/a/e/c/s1;

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance p2, Le/a/e/c/s1$m;

    iget-object v0, p1, Le/a/e/c/s1;->s:Ln3/b/a/h;

    iget-object v1, p1, Le/a/e/c/s1;->F0:Lcom/truecaller/data/entity/Contact;

    invoke-direct {p2, p1, v0, v1}, Le/a/e/c/s1$m;-><init>(Le/a/e/c/s1;Landroid/content/Context;Lcom/truecaller/data/entity/Contact;)V

    return-void
.end method
