.class public final Le/p/a/c$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/p/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public a:Z

.field public b:I

.field public c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Le/p/a/c$b;->b:I

    return-void
.end method


# virtual methods
.method public a()Le/p/a/c;
    .locals 2

    .line 1
    new-instance v0, Le/p/a/c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Le/p/a/c;-><init>(Le/p/a/c$b;Le/p/a/c$a;)V

    return-object v0
.end method
