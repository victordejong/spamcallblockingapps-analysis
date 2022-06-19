.class public final Le/a/k3/j/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:I


# direct methods
.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 1

    const-string v0, "cursor"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "history_event_id"

    .line 2
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/k3/j/c;->a:I

    const-string v0, "recording_path"

    .line 3
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/k3/j/c;->b:I

    const-string v0, "_id"

    .line 4
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/k3/j/c;->c:I

    const-string v0, "history_call_recording_id"

    .line 5
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Le/a/k3/j/c;->d:I

    return-void
.end method


# virtual methods
.method public final a(Landroid/database/Cursor;)Lcom/truecaller/data/entity/CallRecording;
    .locals 5

    const-string v0, "cursor"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget v0, p0, Le/a/k3/j/c;->a:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    iget v2, p0, Le/a/k3/j/c;->b:I

    if-eq v2, v1, :cond_2

    .line 2
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3
    iget v2, p0, Le/a/k3/j/c;->b:I

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 4
    iget v3, p0, Le/a/k3/j/c;->d:I

    if-eq v3, v1, :cond_0

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    goto :goto_0

    .line 5
    :cond_0
    iget v3, p0, Le/a/k3/j/c;->c:I

    if-eq v3, v1, :cond_1

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    goto :goto_0

    :cond_1
    const-wide/16 v3, -0x1

    :goto_0
    if-eqz v2, :cond_2

    .line 6
    new-instance p1, Lcom/truecaller/data/entity/CallRecording;

    invoke-direct {p1, v3, v4, v0, v2}, Lcom/truecaller/data/entity/CallRecording;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method
