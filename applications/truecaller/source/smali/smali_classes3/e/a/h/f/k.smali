.class public final Le/a/h/f/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/d/c0/l0;


# instance fields
.field public final synthetic a:Le/a/h/f/j;


# direct methods
.method public constructor <init>(Le/a/h/f/j;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/h/f/k;->a:Le/a/h/f/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Le/a/h/f/k;->a:Le/a/h/f/j;

    sget-object v0, Lcom/truecaller/common/ui/listitem/ListItemX$Action;->VOICE:Lcom/truecaller/common/ui/listitem/ListItemX$Action;

    invoke-interface {p1, v0}, Le/a/h/f/j;->O1(Lcom/truecaller/common/ui/listitem/ListItemX$Action;)V

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Le/a/h/f/k;->a:Le/a/h/f/j;

    sget-object v0, Lcom/truecaller/common/ui/listitem/ListItemX$Action;->CALL:Lcom/truecaller/common/ui/listitem/ListItemX$Action;

    invoke-interface {p1, v0}, Le/a/h/f/j;->O1(Lcom/truecaller/common/ui/listitem/ListItemX$Action;)V

    :goto_0
    return-void
.end method
