.class public Le/k/a/b/a0/e$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/k/a/b/a0/e$b;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/k/a/b/a0/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# static fields
.field public static final a:Le/k/a/b/a0/e$c;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le/k/a/b/a0/e$c;

    invoke-direct {v0}, Le/k/a/b/a0/e$c;-><init>()V

    sput-object v0, Le/k/a/b/a0/e$c;->a:Le/k/a/b/a0/e$c;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public h()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public i(Le/k/a/b/g;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method
