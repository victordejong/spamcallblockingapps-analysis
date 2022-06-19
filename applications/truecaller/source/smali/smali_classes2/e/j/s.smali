.class public final synthetic Le/j/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/facebook/GraphRequest$b;

.field public final synthetic b:J

.field public final synthetic c:J


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/GraphRequest$b;JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/j/s;->a:Lcom/facebook/GraphRequest$b;

    iput-wide p2, p0, Le/j/s;->b:J

    iput-wide p4, p0, Le/j/s;->c:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Le/j/s;->a:Lcom/facebook/GraphRequest$b;

    iget-wide v1, p0, Le/j/s;->b:J

    iget-wide v3, p0, Le/j/s;->c:J

    .line 1
    check-cast v0, Lcom/facebook/GraphRequest$f;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/facebook/GraphRequest$f;->b(JJ)V

    return-void
.end method
