.class public final synthetic Le/a/q4/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/applinks/b$a;


# instance fields
.field public final synthetic a:Le/a/o5/p;


# direct methods
.method public synthetic constructor <init>(Le/a/o5/p;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/q4/n;->a:Le/a/o5/p;

    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/applinks/b;)V
    .locals 2

    iget-object v0, p0, Le/a/q4/n;->a:Le/a/o5/p;

    if-nez p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object p1, p1, Lcom/facebook/applinks/b;->d:Ljava/lang/String;

    .line 2
    invoke-static {p1}, Lw3/c/a/a/a/h;->j(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3
    invoke-interface {v0, p1}, Le/a/o5/p;->onResult(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method
