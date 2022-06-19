.class public final synthetic Le/a/d0/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/v/l0;


# instance fields
.field public final synthetic a:Lcom/truecaller/callerid/CallerIdService;


# direct methods
.method public synthetic constructor <init>(Lcom/truecaller/callerid/CallerIdService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/d0/n;->a:Lcom/truecaller/callerid/CallerIdService;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Le/a/d0/n;->a:Lcom/truecaller/callerid/CallerIdService;

    check-cast p1, Ljava/lang/Boolean;

    .line 1
    iget-object v0, v0, Lcom/truecaller/callerid/CallerIdService;->b:Le/a/r2/f;

    invoke-interface {v0}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/d0/c0;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1}, Le/a/d0/c0;->d(Z)V

    return-void
.end method
