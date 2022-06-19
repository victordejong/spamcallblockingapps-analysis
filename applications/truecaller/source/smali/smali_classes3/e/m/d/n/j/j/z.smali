.class public Le/m/d/n/j/j/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Le/m/d/n/j/j/w;


# direct methods
.method public constructor <init>(Le/m/d/n/j/j/w;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/m/d/n/j/j/z;->b:Le/m/d/n/j/j/w;

    iput-object p2, p0, Le/m/d/n/j/j/z;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/m/d/n/j/j/z;->b:Le/m/d/n/j/j/w;

    iget-object v1, p0, Le/m/d/n/j/j/z;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Le/m/d/n/j/j/w;->a(Le/m/d/n/j/j/w;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method
