.class public final synthetic Le/m/d/m/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/util/Map$Entry;

.field public final synthetic b:Le/m/d/s/a;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Map$Entry;Le/m/d/s/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/m/d/m/i;->a:Ljava/util/Map$Entry;

    iput-object p2, p0, Le/m/d/m/i;->b:Le/m/d/s/a;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Le/m/d/m/i;->a:Ljava/util/Map$Entry;

    iget-object v1, p0, Le/m/d/m/i;->b:Le/m/d/s/a;

    .line 1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/m/d/s/b;

    invoke-interface {v0, v1}, Le/m/d/s/b;->a(Le/m/d/s/a;)V

    return-void
.end method
