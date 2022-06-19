.class public final synthetic Le/m/d/b0/r/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/common/util/BiConsumer;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Le/m/d/b0/r/k;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/common/util/BiConsumer;Ljava/lang/String;Le/m/d/b0/r/k;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/m/d/b0/r/g;->a:Lcom/google/android/gms/common/util/BiConsumer;

    iput-object p2, p0, Le/m/d/b0/r/g;->b:Ljava/lang/String;

    iput-object p3, p0, Le/m/d/b0/r/g;->c:Le/m/d/b0/r/k;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Le/m/d/b0/r/g;->a:Lcom/google/android/gms/common/util/BiConsumer;

    iget-object v1, p0, Le/m/d/b0/r/g;->b:Ljava/lang/String;

    iget-object v2, p0, Le/m/d/b0/r/g;->c:Le/m/d/b0/r/k;

    .line 1
    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/common/util/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
