.class public final synthetic Le/a/e/c/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Le/a/e/c/w1;


# direct methods
.method public synthetic constructor <init>(Le/a/e/c/w1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/e/c/t;->a:Le/a/e/c/w1;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Le/a/e/c/t;->a:Le/a/e/c/w1;

    .line 1
    iget-object v0, v0, Le/a/e/c/w1;->a:Le/a/e/c/s1;

    .line 2
    iget-object v1, v0, Le/a/e/c/s1;->P1:Le/a/e/c/s1$k;

    .line 3
    iget-object v0, v0, Le/a/e/c/s1;->F0:Lcom/truecaller/data/entity/Contact;

    .line 4
    invoke-interface {v1, v0}, Le/a/e/c/s1$k;->u(Lcom/truecaller/data/entity/Contact;)V

    return-void
.end method
