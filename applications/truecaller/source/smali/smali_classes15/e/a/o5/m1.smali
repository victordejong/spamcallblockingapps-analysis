.class public final Le/a/o5/m1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/o5/l1;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Le/a/a/i0;

.field public final e:Le/a/p5/g;

.field public final f:Le/a/o5/q0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Le/a/a/i0;Le/a/p5/g;Le/a/o5/q0;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "settings"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "deviceInfoUtil"

    invoke-static {p3, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "mediaHelper"

    invoke-static {p4, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Le/a/o5/m1;->d:Le/a/a/i0;

    iput-object p3, p0, Le/a/o5/m1;->e:Le/a/p5/g;

    iput-object p4, p0, Le/a/o5/m1;->f:Le/a/o5/q0;

    const-string p1, "/raw/tc_message_tone"

    .line 2
    iput-object p1, p0, Le/a/o5/m1;->a:Ljava/lang/String;

    const-string p1, "/2131821070"

    .line 3
    iput-object p1, p0, Le/a/o5/m1;->b:Ljava/lang/String;

    const-string p1, "/2131821073"

    .line 4
    iput-object p1, p0, Le/a/o5/m1;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()[J
    .locals 1

    const/16 v0, 0x1f

    new-array v0, v0, [J

    .line 1
    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 8
        0x0
        0x3e8
        0x258
        0x3e8
        0x258
        0x3e8
        0x898
        0x3e8
        0x258
        0x3e8
        0x258
        0x3e8
        0x898
        0x3e8
        0x258
        0x3e8
        0x258
        0x3e8
        0x898
        0x3e8
        0x258
        0x3e8
        0x258
        0x3e8
        0x898
        0x3e8
        0x258
        0x3e8
        0x258
        0x3e8
        0x898
    .end array-data
.end method

.method public b()Landroid/net/Uri;
    .locals 2

    const-string v0, "android.resource://"

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Le/a/o5/m1;->e:Le/a/p5/g;

    invoke-interface {v1}, Le/a/p5/g;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/o5/m1;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "Uri.parse(\"android.resou\u2026URGENT_MESSAGE_TONE_URI\")"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public c()Landroid/net/Uri;
    .locals 2

    const-string v0, "android.resource://"

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Le/a/o5/m1;->e:Le/a/p5/g;

    invoke-interface {v1}, Le/a/p5/g;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/o5/m1;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "Uri.parse(\"android.resou\u2026eName()}$FLASH_TONE_URI\")"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public d()Landroid/net/Uri;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/o5/m1;->d:Le/a/a/i0;

    invoke-interface {v0}, Le/a/a/i0;->d0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Le/a/o5/m1;->d:Le/a/a/i0;

    invoke-interface {v0}, Le/a/a/i0;->j1()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Le/a/o5/m1;->h(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Le/a/o5/m1;->e()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public e()Landroid/net/Uri;
    .locals 2

    const-string v0, "android.resource://"

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Le/a/o5/m1;->e:Le/a/p5/g;

    invoke-interface {v1}, Le/a/p5/g;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/o5/m1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "Uri.parse(\"android.resou\u2026ame()}$MESSAGE_TONE_URI\")"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public f()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/o5/m1;->d:Le/a/a/i0;

    invoke-interface {v0}, Le/a/a/i0;->I2()Z

    move-result v0

    return v0
.end method

.method public g()Landroid/net/Uri;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/o5/m1;->d:Le/a/a/i0;

    invoke-interface {v0}, Le/a/a/i0;->g()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Le/a/o5/m1;->d:Le/a/a/i0;

    invoke-interface {v0}, Le/a/a/i0;->d0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Le/a/o5/m1;->d:Le/a/a/i0;

    invoke-interface {v0}, Le/a/a/i0;->j1()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Le/a/a/i0;->e4(Ljava/lang/String;)V

    .line 3
    :cond_0
    iget-object v0, p0, Le/a/o5/m1;->d:Le/a/a/i0;

    invoke-interface {v0}, Le/a/a/i0;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Le/a/o5/m1;->d:Le/a/a/i0;

    invoke-interface {v0}, Le/a/a/i0;->i3()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Le/a/o5/m1;->h(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 5
    :cond_1
    invoke-virtual {p0}, Le/a/o5/m1;->e()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public final h(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    if-eqz p1, :cond_1

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_2
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 3
    iget-object v0, p0, Le/a/o5/m1;->f:Le/a/o5/q0;

    invoke-static {p1}, Le/q/f/a/d/a;->T1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Le/a/o5/q0;->e(Ljava/util/List;)Le/a/r2/x;

    move-result-object v0

    invoke-virtual {v0}, Le/a/r2/x;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_2
    const-string v1, "mediaHelper.verifyFilesE\u2026stOf(uri)).get() ?: false"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_3

    .line 4
    :cond_4
    invoke-virtual {p0}, Le/a/o5/m1;->e()Landroid/net/Uri;

    move-result-object p1

    :goto_3
    return-object p1
.end method
