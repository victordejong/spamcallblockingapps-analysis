.class public final Lq3/b/l/a$a;
.super Lq3/b/l/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq3/b/l/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Ls1/z/c/f;)V
    .locals 13

    .line 1
    new-instance p1, Lq3/b/l/l/c;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x7ff

    move-object v0, p1

    invoke-direct/range {v0 .. v12}, Lq3/b/l/l/c;-><init>(ZZZZZLjava/lang/String;ZZLjava/lang/String;ZLq3/b/m/b;I)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lq3/b/l/a;-><init>(Lq3/b/l/l/c;Ls1/z/c/f;)V

    return-void
.end method
