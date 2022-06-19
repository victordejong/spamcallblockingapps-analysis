.class public final Le/a/a/j1/a;
.super Ls1/b0/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/b0/b<",
        "Lcom/truecaller/messaging/views/Switch;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Lcom/truecaller/messaging/views/ChatSwitchView;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/truecaller/messaging/views/ChatSwitchView;)V
    .locals 0

    iput-object p1, p0, Le/a/a/j1/a;->b:Ljava/lang/Object;

    iput-object p3, p0, Le/a/a/j1/a;->c:Lcom/truecaller/messaging/views/ChatSwitchView;

    .line 1
    invoke-direct {p0, p2}, Ls1/b0/b;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public b(Ls1/a/l;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/l<",
            "*>;",
            "Lcom/truecaller/messaging/views/Switch;",
            "Lcom/truecaller/messaging/views/Switch;",
            ")V"
        }
    .end annotation

    const-string v0, "property"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    check-cast p3, Lcom/truecaller/messaging/views/Switch;

    check-cast p2, Lcom/truecaller/messaging/views/Switch;

    .line 2
    iget-object p1, p0, Le/a/a/j1/a;->c:Lcom/truecaller/messaging/views/ChatSwitchView;

    invoke-static {p1, p3}, Lcom/truecaller/messaging/views/ChatSwitchView;->h1(Lcom/truecaller/messaging/views/ChatSwitchView;Lcom/truecaller/messaging/views/Switch;)V

    return-void
.end method
