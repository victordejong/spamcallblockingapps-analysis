.class public final Ln3/k/a/t$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/k/a/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/lang/CharSequence;

.field public final b:J

.field public final c:Ln3/k/a/y;

.field public d:Landroid/os/Bundle;

.field public e:Ljava/lang/String;

.field public f:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;JLn3/k/a/y;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Ln3/k/a/t$a;->d:Landroid/os/Bundle;

    .line 3
    iput-object p1, p0, Ln3/k/a/t$a;->a:Ljava/lang/CharSequence;

    .line 4
    iput-wide p2, p0, Ln3/k/a/t$a;->b:J

    .line 5
    iput-object p4, p0, Ln3/k/a/t$a;->c:Ln3/k/a/y;

    return-void
.end method

.method public static a(Ljava/util/List;)[Landroid/os/Bundle;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ln3/k/a/t$a;",
            ">;)[",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/os/Bundle;

    .line 2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_6

    .line 3
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ln3/k/a/t$a;

    .line 4
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 6
    iget-object v5, v3, Ln3/k/a/t$a;->a:Ljava/lang/CharSequence;

    if-eqz v5, :cond_0

    const-string v6, "text"

    .line 7
    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 8
    :cond_0
    iget-wide v5, v3, Ln3/k/a/t$a;->b:J

    const-string v7, "time"

    invoke-virtual {v4, v7, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 9
    iget-object v5, v3, Ln3/k/a/t$a;->c:Ln3/k/a/y;

    if-eqz v5, :cond_2

    .line 10
    iget-object v5, v5, Ln3/k/a/y;->a:Ljava/lang/CharSequence;

    const-string v6, "sender"

    .line 11
    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 12
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1c

    if-lt v5, v6, :cond_1

    .line 13
    iget-object v5, v3, Ln3/k/a/t$a;->c:Ln3/k/a/y;

    invoke-virtual {v5}, Ln3/k/a/y;->c()Landroid/app/Person;

    move-result-object v5

    const-string v6, "sender_person"

    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_1

    .line 14
    :cond_1
    iget-object v5, v3, Ln3/k/a/t$a;->c:Ln3/k/a/y;

    invoke-virtual {v5}, Ln3/k/a/y;->d()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "person"

    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 15
    :cond_2
    :goto_1
    iget-object v5, v3, Ln3/k/a/t$a;->e:Ljava/lang/String;

    if-eqz v5, :cond_3

    const-string v6, "type"

    .line 16
    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    :cond_3
    iget-object v5, v3, Ln3/k/a/t$a;->f:Landroid/net/Uri;

    if-eqz v5, :cond_4

    const-string v6, "uri"

    .line 18
    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 19
    :cond_4
    iget-object v3, v3, Ln3/k/a/t$a;->d:Landroid/os/Bundle;

    if-eqz v3, :cond_5

    const-string v5, "extras"

    .line 20
    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 21
    :cond_5
    aput-object v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    return-object v0
.end method

.method public static b([Landroid/os/Parcelable;)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/os/Parcelable;",
            ")",
            "Ljava/util/List<",
            "Ln3/k/a/t$a;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 2
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_8

    .line 3
    aget-object v2, p0, v1

    instance-of v2, v2, Landroid/os/Bundle;

    if-eqz v2, :cond_7

    .line 4
    aget-object v2, p0, v1

    check-cast v2, Landroid/os/Bundle;

    const-string v3, "uri"

    const-string v4, "extras"

    const-string v5, "type"

    const-string v6, "sender"

    const-string v7, "sender_person"

    const-string v8, "person"

    const-string v9, "time"

    const-string v10, "text"

    const/4 v11, 0x0

    .line 5
    :try_start_0
    invoke-virtual {v2, v10}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-virtual {v2, v9}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_0

    goto/16 :goto_2

    .line 6
    :cond_0
    invoke-virtual {v2, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 7
    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    invoke-static {v6}, Ln3/k/a/y;->b(Landroid/os/Bundle;)Ln3/k/a/y;

    move-result-object v6

    goto :goto_1

    .line 8
    :cond_1
    invoke-virtual {v2, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x1c

    if-lt v8, v12, :cond_2

    .line 9
    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/app/Person;

    .line 10
    invoke-static {v6}, Ln3/k/a/y;->a(Landroid/app/Person;)Ln3/k/a/y;

    move-result-object v6

    goto :goto_1

    .line 11
    :cond_2
    invoke-virtual {v2, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 12
    new-instance v7, Ln3/k/a/y$a;

    invoke-direct {v7}, Ln3/k/a/y$a;-><init>()V

    .line 13
    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 14
    iput-object v6, v7, Ln3/k/a/y$a;->a:Ljava/lang/CharSequence;

    .line 15
    new-instance v6, Ln3/k/a/y;

    invoke-direct {v6, v7}, Ln3/k/a/y;-><init>(Ln3/k/a/y$a;)V

    goto :goto_1

    :cond_3
    move-object v6, v11

    .line 16
    :goto_1
    new-instance v7, Ln3/k/a/t$a;

    .line 17
    invoke-virtual {v2, v10}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v8

    .line 18
    invoke-virtual {v2, v9}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v9

    invoke-direct {v7, v8, v9, v10, v6}, Ln3/k/a/t$a;-><init>(Ljava/lang/CharSequence;JLn3/k/a/y;)V

    .line 19
    invoke-virtual {v2, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 20
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 21
    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 22
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 23
    iput-object v5, v7, Ln3/k/a/t$a;->e:Ljava/lang/String;

    .line 24
    iput-object v3, v7, Ln3/k/a/t$a;->f:Landroid/net/Uri;

    .line 25
    :cond_4
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 26
    iget-object v3, v7, Ln3/k/a/t$a;->d:Landroid/os/Bundle;

    .line 27
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    move-object v11, v7

    :catch_0
    :cond_6
    :goto_2
    if-eqz v11, :cond_7

    .line 28
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_8
    return-object v0
.end method


# virtual methods
.method public c()Landroid/app/Notification$MessagingStyle$Message;
    .locals 6

    .line 1
    iget-object v0, p0, Ln3/k/a/t$a;->c:Ln3/k/a/y;

    .line 2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    const/4 v3, 0x0

    if-lt v1, v2, :cond_1

    .line 3
    new-instance v1, Landroid/app/Notification$MessagingStyle$Message;

    .line 4
    iget-object v2, p0, Ln3/k/a/t$a;->a:Ljava/lang/CharSequence;

    .line 5
    iget-wide v4, p0, Ln3/k/a/t$a;->b:J

    if-nez v0, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0}, Ln3/k/a/y;->c()Landroid/app/Person;

    move-result-object v3

    :goto_0
    invoke-direct {v1, v2, v4, v5, v3}, Landroid/app/Notification$MessagingStyle$Message;-><init>(Ljava/lang/CharSequence;JLandroid/app/Person;)V

    goto :goto_2

    .line 7
    :cond_1
    new-instance v1, Landroid/app/Notification$MessagingStyle$Message;

    .line 8
    iget-object v2, p0, Ln3/k/a/t$a;->a:Ljava/lang/CharSequence;

    .line 9
    iget-wide v4, p0, Ln3/k/a/t$a;->b:J

    if-nez v0, :cond_2

    goto :goto_1

    .line 10
    :cond_2
    iget-object v3, v0, Ln3/k/a/y;->a:Ljava/lang/CharSequence;

    .line 11
    :goto_1
    invoke-direct {v1, v2, v4, v5, v3}, Landroid/app/Notification$MessagingStyle$Message;-><init>(Ljava/lang/CharSequence;JLjava/lang/CharSequence;)V

    .line 12
    :goto_2
    iget-object v0, p0, Ln3/k/a/t$a;->e:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 13
    iget-object v2, p0, Ln3/k/a/t$a;->f:Landroid/net/Uri;

    .line 14
    invoke-virtual {v1, v0, v2}, Landroid/app/Notification$MessagingStyle$Message;->setData(Ljava/lang/String;Landroid/net/Uri;)Landroid/app/Notification$MessagingStyle$Message;

    :cond_3
    return-object v1
.end method
