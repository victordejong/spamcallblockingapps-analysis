.class public final Le/b/a/f$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/b/a/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/b/a/f;->a(Ljava/lang/String;Ljava/util/concurrent/Callable;)Le/b/a/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le/b/a/m<",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/b/a/f$b;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    .line 2
    sget-object p1, Le/b/a/f;->a:Ljava/util/Map;

    .line 3
    iget-object v0, p0, Le/b/a/f$b;->a:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
