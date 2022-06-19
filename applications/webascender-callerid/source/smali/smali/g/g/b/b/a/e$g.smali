.class Lg/g/b/b/a/e$g;
.super Landroidx/room/p;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg/g/b/b/a/e;-><init>(Landroidx/room/j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lg/g/b/b/a/e;Landroidx/room/j;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Landroidx/room/p;-><init>(Landroidx/room/j;)V

    return-void
.end method


# virtual methods
.method public d()Ljava/lang/String;
    .locals 1

    const-string v0, "DELETE FROM caller_ids WHERE _id\n        IN(SELECT _id FROM caller_ids WHERE source_type = ? ORDER BY last_access_time_millis LIMIT ?)"

    return-object v0
.end method
