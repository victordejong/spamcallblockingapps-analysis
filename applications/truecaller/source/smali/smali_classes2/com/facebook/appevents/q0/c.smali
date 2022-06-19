.class public final synthetic Lcom/facebook/appevents/q0/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/appevents/q0/c;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/facebook/appevents/q0/c;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/facebook/appevents/q0/c;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/facebook/appevents/q0/c;->b:Ljava/lang/String;

    const-string v2, "$queriedEvent"

    .line 1
    invoke-static {v0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "$buttonText"

    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v2, Lcom/facebook/appevents/q0/j;->e:Lcom/facebook/appevents/q0/j$a;

    const/4 v3, 0x0

    new-array v3, v3, [F

    invoke-virtual {v2, v0, v1, v3}, Lcom/facebook/appevents/q0/j$a;->b(Ljava/lang/String;Ljava/lang/String;[F)V

    return-void
.end method
