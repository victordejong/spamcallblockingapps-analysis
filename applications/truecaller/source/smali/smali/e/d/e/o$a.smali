.class public Le/d/e/o$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/d/e/o;->finish(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:J

.field public final synthetic c:Le/d/e/o;


# direct methods
.method public constructor <init>(Le/d/e/o;Ljava/lang/String;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/d/e/o$a;->c:Le/d/e/o;

    iput-object p2, p0, Le/d/e/o$a;->a:Ljava/lang/String;

    iput-wide p3, p0, Le/d/e/o$a;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Le/d/e/o$a;->c:Le/d/e/o;

    invoke-static {v0}, Le/d/e/o;->access$000(Le/d/e/o;)Le/d/e/w$a;

    move-result-object v0

    iget-object v1, p0, Le/d/e/o$a;->a:Ljava/lang/String;

    iget-wide v2, p0, Le/d/e/o$a;->b:J

    invoke-virtual {v0, v1, v2, v3}, Le/d/e/w$a;->a(Ljava/lang/String;J)V

    .line 2
    iget-object v0, p0, Le/d/e/o$a;->c:Le/d/e/o;

    invoke-static {v0}, Le/d/e/o;->access$000(Le/d/e/o;)Le/d/e/w$a;

    move-result-object v0

    iget-object v1, p0, Le/d/e/o$a;->c:Le/d/e/o;

    invoke-virtual {v1}, Le/d/e/o;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Le/d/e/w$a;->b(Ljava/lang/String;)V

    return-void
.end method
