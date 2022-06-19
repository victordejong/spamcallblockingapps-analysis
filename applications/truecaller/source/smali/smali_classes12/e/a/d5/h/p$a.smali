.class public final Le/a/d5/h/p$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/w/b/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d5/h/p;->s(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lq3/a/n;


# direct methods
.method public constructor <init>(Lq3/a/n;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/d5/h/p$a;->a:Lq3/a/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public af()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/d5/h/p$a;->a:Lq3/a/n;

    invoke-interface {v0}, Lq3/a/n;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Le/a/d5/h/p$a;->a:Lq3/a/n;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, v1}, Ls1/w/d;->c(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public e4(Le/a/w/b/c/a;)V
    .locals 1

    const-string v0, "referralCodeResponse"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Le/a/d5/h/p$a;->a:Lq3/a/n;

    invoke-interface {p1}, Lq3/a/n;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Le/a/d5/h/p$a;->a:Lq3/a/n;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, v0}, Ls1/w/d;->c(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
