.class public Ln3/y/b/a/v0/a$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/y/b/a/v0/e$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/y/b/a/v0/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public final a:Ln3/y/b/a/x0/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Ln3/y/b/a/x0/a;->a:Ln3/y/b/a/x0/a;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object v0, p0, Ln3/y/b/a/v0/a$d;->a:Ln3/y/b/a/x0/a;

    return-void
.end method
