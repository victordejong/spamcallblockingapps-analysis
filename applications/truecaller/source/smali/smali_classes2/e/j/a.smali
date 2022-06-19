.class public final synthetic Le/j/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Le/j/v;

.field public final synthetic b:Lcom/facebook/AccessToken$a;


# direct methods
.method public synthetic constructor <init>(Le/j/v;Lcom/facebook/AccessToken$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/j/a;->a:Le/j/v;

    iput-object p2, p0, Le/j/a;->b:Lcom/facebook/AccessToken$a;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Le/j/a;->a:Le/j/v;

    iget-object v1, p0, Le/j/a;->b:Lcom/facebook/AccessToken$a;

    const-string v2, "this$0"

    .line 1
    invoke-static {v0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0, v1}, Le/j/v;->a(Lcom/facebook/AccessToken$a;)V

    return-void
.end method
