.class public abstract Le/a/o/a/g/j/b;
.super Lcom/truecaller/contextcall/ui/ContextCallActivity;
.source "SourceFile"


# instance fields
.field public d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/truecaller/contextcall/ui/ContextCallActivity;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Le/a/o/a/g/j/b;->d:Z

    .line 3
    new-instance v0, Le/a/o/a/g/j/a;

    invoke-direct {v0, p0}, Le/a/o/a/g/j/a;-><init>(Le/a/o/a/g/j/b;)V

    invoke-virtual {p0, v0}, Landroidx/activity/ComponentActivity;->addOnContextAvailableListener(Ln3/a/d/b;)V

    return-void
.end method


# virtual methods
.method public pa()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Le/a/o/a/g/j/b;->d:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Le/a/o/a/g/j/b;->d:Z

    .line 3
    invoke-interface {p0}, Lo3/b/b/b;->Yt()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/o/a/g/j/d;

    move-object v1, p0

    check-cast v1, Lcom/truecaller/contextcall/ui/custommessage/ondemand/MidCallCustomMessageActivityContainer;

    invoke-interface {v0, v1}, Le/a/o/a/g/j/d;->U(Lcom/truecaller/contextcall/ui/custommessage/ondemand/MidCallCustomMessageActivityContainer;)V

    :cond_0
    return-void
.end method
