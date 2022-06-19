.class public final Le/a/y/a/h/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavax/inject/Provider<",
        "Le/a/y/b/g0;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Le/a/y/c/x/a/a;


# direct methods
.method public constructor <init>(Le/a/y/c/x/a/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/y/a/h/m;->a:Le/a/y/c/x/a/a;

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/y/a/h/m;->a:Le/a/y/c/x/a/a;

    invoke-interface {v0}, Le/a/y/c/x/a/a;->i()Le/a/y/b/g0;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 2
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v0
.end method
