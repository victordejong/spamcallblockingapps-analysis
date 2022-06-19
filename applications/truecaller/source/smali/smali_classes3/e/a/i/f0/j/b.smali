.class public final Le/a/i/f0/j/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/i/f0/j/a;


# instance fields
.field public a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/i/f0/j/b;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "UUID.randomUUID().toString()"

    .line 2
    invoke-static {v0}, Le/d/c/a/a;->e2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    iput-object v0, p0, Le/a/i/f0/j/b;->a:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Le/a/i/f0/j/b;->a:Ljava/lang/String;

    return-void
.end method
