.class public final Le/a/y/a/i/e/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Le/a/y/a/i/d;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Le/a/y/a/i/e/c;


# direct methods
.method public constructor <init>(Le/a/y/a/i/e/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/y/a/i/e/d;->a:Le/a/y/a/i/e/c;

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/y/a/i/e/d;->a:Le/a/y/a/i/e/c;

    .line 2
    iget-object v0, v0, Le/a/y/a/i/e/c;->a:Le/a/y/a/i/d;

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 3
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v0
.end method
