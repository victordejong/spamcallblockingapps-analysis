.class public final Le/a/d/c0/s$b;
.super Le/a/d/c0/s;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/d/c0/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Le/a/d/c0/s;-><init>(Ls1/z/c/f;)V

    iput-boolean p1, p0, Le/a/d/c0/s$b;->a:Z

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Le/a/d/c0/s$b;->a:Z

    return v0
.end method
