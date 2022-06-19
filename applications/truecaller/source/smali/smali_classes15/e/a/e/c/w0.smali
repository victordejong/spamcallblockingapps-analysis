.class public final synthetic Le/a/e/c/w0;
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

    iput-object p1, p0, Le/a/e/c/w0;->a:Le/a/e/c/s1;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object p1, p0, Le/a/e/c/w0;->a:Le/a/e/c/s1;

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance p2, Le/a/e/c/s1$n;

    iget-object v0, p1, Le/a/e/c/s1;->F0:Lcom/truecaller/data/entity/Contact;

    .line 3
    invoke-virtual {v0}, Lcom/truecaller/data/entity/Contact;->getTcId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Le/a/l2;->a:Le/a/l2$a;

    .line 4
    invoke-virtual {v1}, Le/a/l2$a;->a()Le/a/l2;

    move-result-object v1

    invoke-interface {v1}, Le/a/l2;->b()Le/a/h/f/o;

    move-result-object v1

    check-cast v1, Le/a/t1$k;

    invoke-virtual {v1}, Le/a/t1$k;->a()Le/a/h/p0/c;

    move-result-object v1

    invoke-direct {p2, p1, v0, v1}, Le/a/e/c/s1$n;-><init>(Le/a/e/c/s1;Ljava/lang/String;Le/a/h/p0/c;)V

    return-void
.end method
