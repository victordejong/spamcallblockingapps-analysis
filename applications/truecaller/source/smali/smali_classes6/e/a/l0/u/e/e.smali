.class public final Le/a/l0/u/e/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/l0/u/e/d;


# instance fields
.field public final a:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "resolver"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/l0/u/e/e;->a:Landroid/content/ContentResolver;

    return-void
.end method


# virtual methods
.method public o(Lcom/truecaller/data/entity/CallRecording;)V
    .locals 3

    const-string v0, "callRecording"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2
    iget-object v1, p1, Lcom/truecaller/data/entity/CallRecording;->c:Ljava/lang/String;

    const-string v2, "recording_path"

    .line 3
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object p1, p1, Lcom/truecaller/data/entity/CallRecording;->b:Ljava/lang/String;

    const-string v1, "history_event_id"

    .line 5
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Le/a/l0/u/e/e;->a:Landroid/content/ContentResolver;

    invoke-static {}, Le/a/m0/a1$c;->a()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    return-void
.end method
