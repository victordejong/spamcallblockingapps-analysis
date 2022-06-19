.class public final synthetic Le/a/h0/a/a0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/r2/d0;


# instance fields
.field public final synthetic a:Le/a/h0/a/a0/f;


# direct methods
.method public synthetic constructor <init>(Le/a/h0/a/a0/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/h0/a/a0/b;->a:Le/a/h0/a/a0/f;

    return-void
.end method


# virtual methods
.method public final onResult(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Le/a/h0/a/a0/b;->a:Le/a/h0/a/a0/f;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1
    iget-object p1, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    if-eqz p1, :cond_0

    .line 2
    check-cast p1, Lcom/truecaller/filters/blockedevents/blockadvanced/BlockAdvancedPresenterView;

    invoke-interface {p1}, Lcom/truecaller/filters/blockedevents/blockadvanced/BlockAdvancedPresenterView;->x()V

    .line 3
    iget-object p1, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/filters/blockedevents/blockadvanced/BlockAdvancedPresenterView;

    invoke-interface {p1}, Lcom/truecaller/filters/blockedevents/blockadvanced/BlockAdvancedPresenterView;->finish()V

    :cond_0
    return-void
.end method
