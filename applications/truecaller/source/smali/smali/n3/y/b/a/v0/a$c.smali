.class public final Ln3/y/b/a/v0/a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/y/b/a/v0/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/y/b/a/v0/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final a:Ln3/y/b/a/w0/d;

.field public final b:F

.field public final c:J

.field public d:[[J


# direct methods
.method public constructor <init>(Ln3/y/b/a/w0/d;FJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ln3/y/b/a/v0/a$c;->a:Ln3/y/b/a/w0/d;

    .line 3
    iput p2, p0, Ln3/y/b/a/v0/a$c;->b:F

    .line 4
    iput-wide p3, p0, Ln3/y/b/a/v0/a$c;->c:J

    return-void
.end method
