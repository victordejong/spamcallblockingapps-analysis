.class public final Le/m/a/c/e0$e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/m/a/c/e0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation


# instance fields
.field public final a:Le/m/a/c/y0;

.field public final b:I

.field public final c:J


# direct methods
.method public constructor <init>(Le/m/a/c/y0;IJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/m/a/c/e0$e;->a:Le/m/a/c/y0;

    .line 3
    iput p2, p0, Le/m/a/c/e0$e;->b:I

    .line 4
    iput-wide p3, p0, Le/m/a/c/e0$e;->c:J

    return-void
.end method
