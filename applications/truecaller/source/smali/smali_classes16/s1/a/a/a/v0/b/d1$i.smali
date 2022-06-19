.class public final Ls1/a/a/a/v0/b/d1$i;
.super Ls1/a/a/a/v0/b/e1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls1/a/a/a/v0/b/d1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "i"
.end annotation


# static fields
.field public static final c:Ls1/a/a/a/v0/b/d1$i;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ls1/a/a/a/v0/b/d1$i;

    invoke-direct {v0}, Ls1/a/a/a/v0/b/d1$i;-><init>()V

    sput-object v0, Ls1/a/a/a/v0/b/d1$i;->c:Ls1/a/a/a/v0/b/d1$i;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-string v0, "unknown"

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, v0, v1}, Ls1/a/a/a/v0/b/e1;-><init>(Ljava/lang/String;Z)V

    return-void
.end method
