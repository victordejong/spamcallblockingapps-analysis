.class public Le/k/a/b/a0/e$a;
.super Le/k/a/b/a0/e$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/k/a/b/a0/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final b:Le/k/a/b/a0/e$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le/k/a/b/a0/e$a;

    invoke-direct {v0}, Le/k/a/b/a0/e$a;-><init>()V

    sput-object v0, Le/k/a/b/a0/e$a;->b:Le/k/a/b/a0/e$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/k/a/b/a0/e$c;-><init>()V

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

    const/16 p2, 0x20

    .line 1
    invoke-virtual {p1, p2}, Le/k/a/b/g;->m1(C)V

    return-void
.end method
