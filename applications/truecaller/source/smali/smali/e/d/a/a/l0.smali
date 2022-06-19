.class public final synthetic Le/d/a/a/l0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Le/d/a/a/m;

.field public final synthetic b:Le/d/a/a/l;


# direct methods
.method public synthetic constructor <init>(Le/d/a/a/m;Le/d/a/a/l;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/d/a/a/l0;->a:Le/d/a/a/m;

    iput-object p2, p0, Le/d/a/a/l0;->b:Le/d/a/a/l;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Le/d/a/a/l0;->a:Le/d/a/a/m;

    iget-object v1, p0, Le/d/a/a/l0;->b:Le/d/a/a/l;

    .line 1
    sget-object v2, Le/d/a/a/a0;->m:Le/d/a/a/k;

    .line 2
    iget-object v1, v1, Le/d/a/a/l;->a:Ljava/lang/String;

    .line 3
    invoke-interface {v0, v2, v1}, Le/d/a/a/m;->a(Le/d/a/a/k;Ljava/lang/String;)V

    return-void
.end method
