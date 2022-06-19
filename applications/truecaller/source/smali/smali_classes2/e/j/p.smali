.class public final synthetic Le/j/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/GraphRequest$b;


# instance fields
.field public final synthetic a:Lcom/facebook/GraphRequest$d;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/GraphRequest$d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/j/p;->a:Lcom/facebook/GraphRequest$d;

    return-void
.end method


# virtual methods
.method public final a(Le/j/l0;)V
    .locals 2

    iget-object v0, p0, Le/j/p;->a:Lcom/facebook/GraphRequest$d;

    const-string v1, "response"

    .line 1
    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v1, p1, Le/j/l0;->c:Lorg/json/JSONObject;

    .line 3
    invoke-interface {v0, v1, p1}, Lcom/facebook/GraphRequest$d;->a(Lorg/json/JSONObject;Le/j/l0;)V

    :goto_0
    return-void
.end method
