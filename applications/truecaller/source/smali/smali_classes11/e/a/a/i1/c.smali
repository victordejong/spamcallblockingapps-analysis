.class public final Le/a/a/i1/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/a/i1/b;


# instance fields
.field public final a:Ls1/g;

.field public final b:Ls1/f0/h;

.field public final c:Le/a/p5/c0;

.field public final d:Le/a/a/k/a/a/q;

.field public final e:Le/a/o5/b0;

.field public final f:Le/a/u3/g;

.field public final g:Le/a/h0/m;

.field public final h:Le/a/a/i0;

.field public final i:Le/a/p5/c;


# direct methods
.method public constructor <init>(Le/a/p5/c0;Le/a/a/k/a/a/q;Le/a/o5/b0;Le/a/u3/g;Le/a/h0/m;Le/a/a/i0;Le/a/p5/c;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "resourceProvider"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imGroupUtil"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dateHelper"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featuresRegistry"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "filterSettings"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "settings"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a/i1/c;->c:Le/a/p5/c0;

    iput-object p2, p0, Le/a/a/i1/c;->d:Le/a/a/k/a/a/q;

    iput-object p3, p0, Le/a/a/i1/c;->e:Le/a/o5/b0;

    iput-object p4, p0, Le/a/a/i1/c;->f:Le/a/u3/g;

    iput-object p5, p0, Le/a/a/i1/c;->g:Le/a/h0/m;

    iput-object p6, p0, Le/a/a/i1/c;->h:Le/a/a/i0;

    iput-object p7, p0, Le/a/a/i1/c;->i:Le/a/p5/c;

    .line 2
    sget-object p1, Le/a/a/i1/c$a;->b:Le/a/a/i1/c$a;

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/a/i1/c;->a:Ls1/g;

    .line 3
    new-instance p1, Ls1/f0/h;

    const-string p2, "\\b"

    invoke-static {p2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-interface {p6}, Le/a/a/i0;->Y1()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "([_A-Za-z0-9]+)"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ls1/f0/h;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Le/a/a/i1/c;->b:Ls1/f0/h;

    return-void
.end method


# virtual methods
.method public A(IZ)I
    .locals 1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    const p1, 0x7f1203bb

    goto :goto_0

    :cond_1
    const p1, 0x7f1203ba

    goto :goto_0

    :cond_2
    const p1, 0x7f12038d

    goto :goto_0

    :cond_3
    const p1, 0x7f12038e

    :goto_0
    return p1
.end method

.method public B(I)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/i1/c;->c:Le/a/p5/c0;

    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    const p1, 0x7f1203af

    goto :goto_0

    :cond_0
    const p1, 0x7f1203b7

    :goto_0
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0, p1, v1}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "resourceProvider.getStri\u2026entNotDelivered\n        )"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public C(DDLjava/lang/CharSequence;)Landroid/net/Uri;
    .locals 9

    const-string v0, "java.lang.String.format(locale, format, *args)"

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x3

    if-eqz p5, :cond_0

    .line 1
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v6, 0x5

    new-array v7, v6, [Ljava/lang/Object;

    const-string v8, "https://www.google.com/maps/search/?api=1&query="

    aput-object v8, v7, v3

    .line 2
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    aput-object p1, v7, v2

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    aput-object p1, v7, v1

    const-string p1, "&query_place_id="

    aput-object p1, v7, v4

    const/4 p1, 0x4

    aput-object p5, v7, p1

    .line 3
    invoke-static {v7, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string p2, "%s%.7f,%.7f%s%s"

    invoke-static {v5, p2, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    sget-object p5, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v5, v4, [Ljava/lang/Object;

    const-string v6, "https://maps.google.com/maps?q="

    aput-object v6, v5, v3

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    aput-object p1, v5, v2

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    aput-object p1, v5, v1

    invoke-static {v5, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string p2, "%s%.7f,%.7f"

    invoke-static {p5, p2, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    :goto_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string p2, "Uri.parse(uriStr)"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public D(Lcom/truecaller/messaging/data/types/Conversation;Lcom/truecaller/messaging/data/types/InboxTab;)Ljava/lang/String;
    .locals 6

    const-string v0, "conversation"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inboxTab"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/a/i1/c;->f:Le/a/u3/g;

    invoke-virtual {v0}, Le/a/u3/g;->h0()Le/a/u3/b;

    move-result-object v0

    invoke-interface {v0}, Le/a/u3/b;->isEnabled()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 2
    sget-object v2, Lcom/truecaller/messaging/data/types/InboxTab;->SPAM:Lcom/truecaller/messaging/data/types/InboxTab;

    const/4 v3, 0x0

    if-eq p2, v2, :cond_1

    if-eqz v0, :cond_0

    sget-object v2, Lcom/truecaller/messaging/data/types/InboxTab;->OTHERS:Lcom/truecaller/messaging/data/types/InboxTab;

    if-ne p2, v2, :cond_0

    goto :goto_0

    :cond_0
    move p2, v3

    goto :goto_1

    :cond_1
    :goto_0
    move p2, v1

    .line 3
    :goto_1
    iget-object v2, p1, Lcom/truecaller/messaging/data/types/Conversation;->m:[Lcom/truecaller/data/entity/messaging/Participant;

    const-string v4, "conversation.participants"

    invoke-static {v2, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Le/a/a/i1/h;->e([Lcom/truecaller/data/entity/messaging/Participant;)Z

    move-result v2

    const/4 v5, 0x0

    if-nez v2, :cond_4

    if-nez p2, :cond_2

    goto :goto_3

    .line 4
    :cond_2
    iget-object p1, p1, Lcom/truecaller/messaging/data/types/Conversation;->m:[Lcom/truecaller/data/entity/messaging/Participant;

    invoke-static {p1, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Le/q/f/a/d/a;->s0([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "conversation.participants.first()"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/truecaller/data/entity/messaging/Participant;

    .line 5
    iget-object p2, p0, Le/a/a/i1/c;->g:Le/a/h0/m;

    invoke-interface {p2}, Le/a/h0/m;->u()Z

    move-result p2

    if-eqz p2, :cond_3

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    move v1, v3

    :goto_2
    invoke-virtual {p1, v1}, Lcom/truecaller/data/entity/messaging/Participant;->k(Z)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 6
    iget-object p1, p0, Le/a/a/i1/c;->c:Le/a/p5/c0;

    const p2, 0x7f120036

    new-array v0, v3, [Ljava/lang/Object;

    invoke-interface {p1, p2, v0}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    :cond_4
    :goto_3
    return-object v5
.end method

.method public E(Ljava/lang/String;I)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-le p2, v1, :cond_3

    if-eqz p1, :cond_1

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v0

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v1

    :goto_1
    if-eqz v2, :cond_2

    .line 2
    iget-object p1, p0, Le/a/a/i1/c;->c:Le/a/p5/c0;

    const v2, 0x7f100018

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v0

    invoke-interface {p1, v2, p2, v1}, Le/a/p5/c0;->k(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 3
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x10

    invoke-static {p1, v3}, Lw3/c/a/a/a/h;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " + "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    iget-object p1, p0, Le/a/a/i1/c;->c:Le/a/p5/c0;

    const v3, 0x7f10001a

    sub-int/2addr p2, v1

    new-array v1, v1, [Ljava/lang/Object;

    .line 5
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v0

    .line 6
    invoke-interface {p1, v3, p2, v1}, Le/a/p5/c0;->k(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_2
    const-string p2, "if (contactName.isNullOr\u2026         }\"\n            }"

    .line 7
    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_4

    :cond_3
    if-eqz p1, :cond_5

    .line 8
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-nez p2, :cond_4

    goto :goto_3

    :cond_4
    move v1, v0

    :cond_5
    :goto_3
    if-eqz v1, :cond_6

    .line 9
    iget-object p1, p0, Le/a/a/i1/c;->c:Le/a/p5/c0;

    const p2, 0x7f12037e

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {p1, p2, v0}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :cond_6
    const-string p2, "if (contactName.isNullOr\u2026    contactName\n        }"

    .line 10
    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_4
    return-object p1
.end method

.method public F(IIII)Ls1/k;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII)",
            "Ls1/k<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x0

    .line 1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-nez v0, :cond_0

    new-instance p1, Ls1/k;

    invoke-direct {p1, v2, v2}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :cond_0
    and-int/lit8 v0, p1, 0x74

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    if-eqz v0, :cond_3

    .line 2
    new-instance p1, Ls1/k;

    if-nez p4, :cond_2

    const p2, 0x7f0804eb

    goto :goto_1

    :cond_2
    const p2, 0x7f080637

    .line 3
    :goto_1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const p3, 0x7f1203b5

    .line 4
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    .line 5
    invoke-direct {p1, p2, p3}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_3
    const/4 v0, 0x3

    if-ne p3, v0, :cond_5

    .line 6
    new-instance p1, Ls1/k;

    if-nez p4, :cond_4

    const p2, 0x7f0804ea

    goto :goto_2

    :cond_4
    const p2, 0x7f0805e9

    .line 7
    :goto_2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const p3, 0x7f1203b2

    .line 8
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    .line 9
    invoke-direct {p1, p2, p3}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_5

    :cond_5
    if-ne p2, v0, :cond_7

    .line 10
    new-instance p1, Ls1/k;

    if-nez p4, :cond_6

    const p2, 0x7f0804e6

    goto :goto_3

    :cond_6
    const p2, 0x7f08044a

    .line 11
    :goto_3
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const p3, 0x7f1203ae

    .line 12
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    .line 13
    invoke-direct {p1, p2, p3}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_5

    :cond_7
    if-ne p1, v3, :cond_9

    .line 14
    new-instance p1, Ls1/k;

    if-nez p4, :cond_8

    const p2, 0x7f0804ec

    goto :goto_4

    :cond_8
    const p2, 0x7f080638

    .line 15
    :goto_4
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const p3, 0x7f1203b6

    .line 16
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    .line 17
    invoke-direct {p1, p2, p3}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_5

    :cond_9
    const/16 p2, 0x80

    and-int/2addr p1, p2

    if-ne p1, p2, :cond_b

    .line 18
    new-instance p1, Ls1/k;

    if-ne p4, v3, :cond_a

    const v1, 0x7f080678

    .line 19
    :cond_a
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const p3, 0x7f1203b4

    .line 20
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    .line 21
    invoke-direct {p1, p2, p3}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_5

    .line 22
    :cond_b
    new-instance p1, Ls1/k;

    invoke-direct {p1, v2, v2}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_5
    return-object p1
.end method

.method public G(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string v0, "contentText"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const/4 v3, 0x0

    if-eqz v0, :cond_1

    return-object v3

    .line 2
    :cond_1
    iget-object v0, p0, Le/a/a/i1/c;->b:Ls1/f0/h;

    const/4 v4, 0x2

    invoke-static {v0, p1, v1, v4}, Ls1/f0/h;->b(Ls1/f0/h;Ljava/lang/CharSequence;II)Ls1/f0/f;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 3
    check-cast p1, Ls1/f0/g;

    .line 4
    iget-object v0, p1, Ls1/f0/g;->a:Ls1/f0/e;

    .line 5
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    if-le v0, v2, :cond_2

    .line 6
    iget-object p1, p1, Ls1/f0/g;->a:Ls1/f0/e;

    .line 7
    invoke-interface {p1, v2}, Ls1/f0/e;->get(I)Ls1/f0/d;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 8
    iget-object p1, p1, Ls1/f0/d;->a:Ljava/lang/String;

    move-object v3, p1

    :cond_2
    return-object v3
.end method

.method public final H(Lcom/truecaller/messaging/data/types/Conversation;)Lcom/truecaller/messaging/conversation/ConversationAction;
    .locals 5

    .line 1
    iget-object p1, p1, Lcom/truecaller/messaging/data/types/Conversation;->m:[Lcom/truecaller/data/entity/messaging/Participant;

    .line 2
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    invoke-static {p1}, Le/a/c/p/a;->p1([Lcom/truecaller/data/entity/messaging/Participant;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const/4 v3, 0x0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move-object p1, v3

    :goto_1
    if-eqz p1, :cond_6

    .line 3
    invoke-static {p1}, Le/q/f/a/d/a;->v0([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/truecaller/data/entity/messaging/Participant;

    if-eqz p1, :cond_6

    .line 4
    iget v0, p1, Lcom/truecaller/data/entity/messaging/Participant;->b:I

    const/4 v4, 0x5

    if-eq v0, v4, :cond_2

    move v0, v2

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    move-object p1, v3

    :goto_3
    if-eqz p1, :cond_6

    .line 5
    iget-object v0, p0, Le/a/a/i1/c;->g:Le/a/h0/m;

    invoke-interface {v0}, Le/a/h0/m;->u()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Le/a/a/i1/c;->f:Le/a/u3/g;

    invoke-virtual {v0}, Le/a/u3/g;->h0()Le/a/u3/b;

    move-result-object v0

    invoke-interface {v0}, Le/a/u3/b;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_4

    move v1, v2

    .line 6
    :cond_4
    invoke-virtual {p1, v1}, Lcom/truecaller/data/entity/messaging/Participant;->k(Z)Z

    move-result p1

    if-nez p1, :cond_5

    sget-object p1, Lcom/truecaller/messaging/conversation/ConversationAction;->TOP_BLOCK:Lcom/truecaller/messaging/conversation/ConversationAction;

    goto :goto_4

    :cond_5
    sget-object p1, Lcom/truecaller/messaging/conversation/ConversationAction;->TOP_UNBLOCK:Lcom/truecaller/messaging/conversation/ConversationAction;

    :goto_4
    move-object v3, p1

    :cond_6
    return-object v3
.end method

.method public final I(Lcom/truecaller/messaging/data/types/Message;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/messaging/data/types/Message;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p1, p1, Lcom/truecaller/messaging/data/types/Message;->o:[Lcom/truecaller/messaging/data/types/Entity;

    const-string v0, "entities"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_4

    aget-object v4, p1, v3

    .line 3
    iget-object v4, v4, Lcom/truecaller/messaging/data/types/Entity;->b:Ljava/lang/String;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    :cond_0
    move v5, v2

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v5, 0x1

    :goto_2
    if-nez v5, :cond_2

    goto :goto_3

    :cond_2
    const/4 v4, 0x0

    :goto_3
    if-eqz v4, :cond_3

    .line 4
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method public final J(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "text/html"

    .line 1
    invoke-static {v0, p1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "text/plain"

    invoke-static {v0, p1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public a(Ljava/lang/String;)Le/a/a/c/j8/a;
    .locals 4

    const-string v0, "text"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/a/i1/c;->f:Le/a/u3/g;

    invoke-virtual {v0}, Le/a/u3/g;->W()Le/a/u3/b;

    move-result-object v0

    invoke-interface {v0}, Le/a/u3/b;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Le/a/a/i1/c;->y(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Le/a/t/a/y/b;->a:Le/a/t/a/y/b;

    invoke-virtual {v0, p1}, Le/a/t/a/y/b;->a(Ljava/lang/CharSequence;)I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    iget-object v0, p0, Le/a/a/i1/c;->a:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 4
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Le/a/a/c/j8/a;

    .line 5
    iget-object v3, v3, Le/a/a/c/j8/a;->a:Ljava/lang/String;

    .line 6
    invoke-static {v3, p1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v1, v2

    :cond_3
    check-cast v1, Le/a/a/c/j8/a;

    :cond_4
    :goto_0
    return-object v1
.end method

.method public b(ILjava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_7

    if-nez p2, :cond_0

    goto/16 :goto_0

    .line 1
    :cond_0
    sget-object p1, Lcom/truecaller/messaging/data/types/Entity;->h:Lcom/truecaller/messaging/data/types/Entity$a;

    invoke-virtual {p1, p2}, Lcom/truecaller/messaging/data/types/Entity$a;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p1, p0, Le/a/a/i1/c;->c:Le/a/p5/c0;

    const p2, 0x7f08071d

    invoke-interface {p1, p2}, Le/a/p5/c0;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 2
    :cond_1
    invoke-virtual {p1, p2}, Lcom/truecaller/messaging/data/types/Entity$a;->f(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p1, p0, Le/a/a/i1/c;->c:Le/a/p5/c0;

    const p2, 0x7f0804e9

    invoke-interface {p1, p2}, Le/a/p5/c0;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 3
    :cond_2
    invoke-virtual {p1, p2}, Lcom/truecaller/messaging/data/types/Entity$a;->l(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object p1, p0, Le/a/a/i1/c;->c:Le/a/p5/c0;

    const p2, 0x7f0804ed

    invoke-interface {p1, p2}, Le/a/p5/c0;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 4
    :cond_3
    invoke-virtual {p1, p2}, Lcom/truecaller/messaging/data/types/Entity$a;->k(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object p1, p0, Le/a/a/i1/c;->c:Le/a/p5/c0;

    const p2, 0x7f080769

    invoke-interface {p1, p2}, Le/a/p5/c0;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 5
    :cond_4
    invoke-virtual {p1, p2}, Lcom/truecaller/messaging/data/types/Entity$a;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object p1, p0, Le/a/a/i1/c;->c:Le/a/p5/c0;

    const p2, 0x7f0804ee

    invoke-interface {p1, p2}, Le/a/p5/c0;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 6
    :cond_5
    invoke-virtual {p1, p2}, Lcom/truecaller/messaging/data/types/Entity$a;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object p1, p0, Le/a/a/i1/c;->c:Le/a/p5/c0;

    const p2, 0x7f0806fa

    invoke-interface {p1, p2}, Le/a/p5/c0;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 7
    :cond_6
    invoke-virtual {p1, p2}, Lcom/truecaller/messaging/data/types/Entity$a;->h(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Le/a/a/i1/c;->c:Le/a/p5/c0;

    const p2, 0x7f080741

    invoke-interface {p1, p2}, Le/a/p5/c0;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_7
    :goto_0
    return-object v0
.end method

.method public c(Lcom/truecaller/messaging/data/types/Message;ZZ)Z
    .locals 11

    const-string v0, "message"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/a/i1/c;->f:Le/a/u3/g;

    invoke-virtual {v0}, Le/a/u3/g;->Q()Le/a/u3/b;

    move-result-object v0

    invoke-interface {v0}, Le/a/u3/b;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_9

    if-eqz p2, :cond_9

    if-nez p3, :cond_9

    iget-object p2, p1, Lcom/truecaller/messaging/data/types/Message;->n:Lcom/truecaller/messaging/data/types/TransportInfo;

    instance-of p3, p2, Lcom/truecaller/messaging/transport/im/ImTransportInfo;

    if-nez p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    check-cast p2, Lcom/truecaller/messaging/transport/im/ImTransportInfo;

    if-eqz p2, :cond_9

    .line 2
    iget p2, p2, Lcom/truecaller/messaging/transport/im/ImTransportInfo;->n:I

    if-eq p2, v2, :cond_1

    move p2, v2

    goto :goto_0

    :cond_1
    move p2, v1

    :goto_0
    if-ne p2, v2, :cond_9

    .line 3
    iget-object p2, p1, Lcom/truecaller/messaging/data/types/Message;->o:[Lcom/truecaller/messaging/data/types/Entity;

    const-string p3, "message.entities"

    invoke-static {p2, p3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    array-length p3, p2

    move v0, v1

    :goto_1
    if-ge v0, p3, :cond_5

    aget-object v3, p2, v0

    .line 5
    invoke-virtual {v3}, Lcom/truecaller/messaging/data/types/Entity;->g()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v3}, Lcom/truecaller/messaging/data/types/Entity;->e()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v3}, Lcom/truecaller/messaging/data/types/Entity;->h()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v3}, Lcom/truecaller/messaging/data/types/Entity;->o()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    move v3, v1

    goto :goto_3

    :cond_3
    :goto_2
    move v3, v2

    :goto_3
    if-eqz v3, :cond_4

    move p2, v2

    goto :goto_4

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    move p2, v1

    :goto_4
    if-nez p2, :cond_9

    .line 6
    iget-object p2, p1, Lcom/truecaller/messaging/data/types/Message;->n:Lcom/truecaller/messaging/data/types/TransportInfo;

    const-string p3, "transportInfo"

    invoke-static {p2, p3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/truecaller/messaging/data/types/TransportInfo;->E()I

    move-result p2

    const-string v0, "dateSent"

    const/4 v3, 0x3

    if-ne p2, v3, :cond_6

    iget-object p2, p1, Lcom/truecaller/messaging/data/types/Message;->n:Lcom/truecaller/messaging/data/types/TransportInfo;

    invoke-static {p2, p3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/truecaller/messaging/data/types/TransportInfo;->L1()I

    move-result p2

    if-eq p2, v3, :cond_6

    iget-object p2, p1, Lcom/truecaller/messaging/data/types/Message;->d:Lw3/b/a/b;

    invoke-static {p2, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget-wide v4, p2, Lw3/b/a/e0/e;->a:J

    .line 8
    iget-object p2, p0, Le/a/a/i1/c;->i:Le/a/p5/c;

    invoke-interface {p2}, Le/a/p5/c;->c()J

    move-result-wide v6

    sget-object p2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    iget-object v8, p0, Le/a/a/i1/c;->f:Le/a/u3/g;

    invoke-virtual {v8}, Le/a/u3/g;->b0()Le/a/u3/i;

    move-result-object v8

    const-wide/16 v9, 0x3c

    invoke-interface {v8, v9, v10}, Le/a/u3/i;->d(J)J

    move-result-wide v8

    invoke-virtual {p2, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v8

    sub-long/2addr v6, v8

    cmp-long p2, v4, v6

    if-gez p2, :cond_6

    move p2, v2

    goto :goto_5

    :cond_6
    move p2, v1

    :goto_5
    if-nez p2, :cond_8

    .line 9
    iget-object p2, p1, Lcom/truecaller/messaging/data/types/Message;->n:Lcom/truecaller/messaging/data/types/TransportInfo;

    invoke-static {p2, p3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/truecaller/messaging/data/types/TransportInfo;->E()I

    move-result p2

    if-eq p2, v3, :cond_7

    iget-object p2, p1, Lcom/truecaller/messaging/data/types/Message;->n:Lcom/truecaller/messaging/data/types/TransportInfo;

    invoke-static {p2, p3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/truecaller/messaging/data/types/TransportInfo;->L1()I

    move-result p2

    if-eq p2, v3, :cond_7

    iget p2, p1, Lcom/truecaller/messaging/data/types/Message;->g:I

    if-ne p2, v2, :cond_7

    iget-object p1, p1, Lcom/truecaller/messaging/data/types/Message;->d:Lw3/b/a/b;

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    iget-wide p1, p1, Lw3/b/a/e0/e;->a:J

    .line 11
    iget-object p3, p0, Le/a/a/i1/c;->i:Le/a/p5/c;

    invoke-interface {p3}, Le/a/p5/c;->c()J

    move-result-wide v3

    sget-object p3, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    iget-object v0, p0, Le/a/a/i1/c;->f:Le/a/u3/g;

    invoke-virtual {v0}, Le/a/u3/g;->c0()Le/a/u3/i;

    move-result-object v0

    const-wide/16 v5, 0x2d0

    invoke-interface {v0, v5, v6}, Le/a/u3/i;->d(J)J

    move-result-wide v5

    invoke-virtual {p3, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v5

    sub-long/2addr v3, v5

    cmp-long p1, p1, v3

    if-gez p1, :cond_7

    move p1, v2

    goto :goto_6

    :cond_7
    move p1, v1

    :goto_6
    if-eqz p1, :cond_9

    :cond_8
    move v1, v2

    :cond_9
    return v1
.end method

.method public d(Lcom/truecaller/messaging/data/types/Draft;)Ljava/lang/String;
    .locals 6

    const-string v0, "draft"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p1, Lcom/truecaller/messaging/data/types/Draft;->g:[Lcom/truecaller/messaging/data/types/BinaryEntity;

    const-string v1, "draft.media"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    invoke-virtual {v4}, Lcom/truecaller/messaging/data/types/BinaryEntity;->e()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_2

    .line 2
    iget-object v0, p0, Le/a/a/i1/c;->c:Le/a/p5/c0;

    const v1, 0x7f120391

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    iget-object v0, p1, Lcom/truecaller/messaging/data/types/Draft;->c:Ljava/lang/String;

    const-string p1, "draft.text"

    invoke-static {v0, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_2
    return-object v0
.end method

.method public e(Ljava/lang/String;)Lcom/truecaller/messaging/conversation/AttachmentType;
    .locals 2

    const-string v0, "type"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/truecaller/messaging/data/types/Entity;->h:Lcom/truecaller/messaging/data/types/Entity$a;

    invoke-virtual {v0, p1}, Lcom/truecaller/messaging/data/types/Entity$a;->f(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object p1, Lcom/truecaller/messaging/conversation/AttachmentType;->IMAGE:Lcom/truecaller/messaging/conversation/AttachmentType;

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Lcom/truecaller/messaging/data/types/Entity$a;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object p1, Lcom/truecaller/messaging/conversation/AttachmentType;->GIF:Lcom/truecaller/messaging/conversation/AttachmentType;

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {v0, p1}, Lcom/truecaller/messaging/data/types/Entity$a;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object p1, Lcom/truecaller/messaging/conversation/AttachmentType;->AUDIO:Lcom/truecaller/messaging/conversation/AttachmentType;

    goto :goto_0

    .line 4
    :cond_2
    invoke-virtual {v0, p1}, Lcom/truecaller/messaging/data/types/Entity$a;->l(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object p1, Lcom/truecaller/messaging/conversation/AttachmentType;->VIDEO:Lcom/truecaller/messaging/conversation/AttachmentType;

    goto :goto_0

    .line 5
    :cond_3
    invoke-virtual {v0, p1}, Lcom/truecaller/messaging/data/types/Entity$a;->k(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object p1, Lcom/truecaller/messaging/conversation/AttachmentType;->VCARD:Lcom/truecaller/messaging/conversation/AttachmentType;

    goto :goto_0

    .line 6
    :cond_4
    invoke-virtual {v0, p1}, Lcom/truecaller/messaging/data/types/Entity$a;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object p1, Lcom/truecaller/messaging/conversation/AttachmentType;->DOCUMENT:Lcom/truecaller/messaging/conversation/AttachmentType;

    goto :goto_0

    .line 7
    :cond_5
    invoke-virtual {v0, p1}, Lcom/truecaller/messaging/data/types/Entity$a;->h(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    sget-object p1, Lcom/truecaller/messaging/conversation/AttachmentType;->LOCATION:Lcom/truecaller/messaging/conversation/AttachmentType;

    goto :goto_0

    .line 8
    :cond_6
    sget-object p1, Lcom/truecaller/messaging/conversation/AttachmentType;->UNKNOWN:Lcom/truecaller/messaging/conversation/AttachmentType;

    :goto_0
    return-object p1
.end method

.method public f(IZ)I
    .locals 1

    const/4 v0, 0x2

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    if-ne p1, v0, :cond_1

    :cond_0
    const p1, 0x7f12086e

    goto :goto_0

    :cond_1
    if-ne p1, v0, :cond_2

    const p1, 0x7f12086f

    goto :goto_0

    :cond_2
    const/4 p2, 0x3

    if-ne p1, p2, :cond_3

    const p1, 0x7f120872

    goto :goto_0

    :cond_3
    const/4 p2, 0x4

    if-ne p1, p2, :cond_4

    const p1, 0x7f120871

    goto :goto_0

    :cond_4
    const p1, 0x7f120870

    :goto_0
    return p1
.end method

.method public g(Lcom/truecaller/messaging/data/types/Message;)I
    .locals 4

    .line 1
    iget-wide v0, p1, Lcom/truecaller/messaging/data/types/Message;->S:J

    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    const p1, 0x7f120392

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public h(Lcom/truecaller/messaging/data/types/Message;)Ljava/lang/String;
    .locals 3

    const-string v0, "message"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/a/i1/c;->e:Le/a/o5/b0;

    iget-object p1, p1, Lcom/truecaller/messaging/data/types/Message;->e:Lw3/b/a/b;

    const-string v1, "message.date"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-wide v1, p1, Lw3/b/a/e0/e;->a:J

    .line 3
    invoke-interface {v0, v1, v2}, Le/a/o5/b0;->v(J)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public i(Lcom/truecaller/messaging/data/types/Conversation;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0, p1}, Le/a/a/i1/c;->H(Lcom/truecaller/messaging/data/types/Conversation;)Lcom/truecaller/messaging/conversation/ConversationAction;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    sget-object v0, Lcom/truecaller/messaging/conversation/ConversationAction;->TOP_UNBLOCK:Lcom/truecaller/messaging/conversation/ConversationAction;

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public j(IZ)I
    .locals 1

    const/4 v0, 0x2

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    if-ne p1, v0, :cond_1

    :cond_0
    const p1, 0x7f0804de

    goto :goto_0

    :cond_1
    if-ne p1, v0, :cond_2

    const p1, 0x7f0806e1

    goto :goto_0

    :cond_2
    const/4 p2, 0x3

    if-ne p1, p2, :cond_3

    const p1, 0x7f0806e3

    goto :goto_0

    :cond_3
    const/4 p2, 0x4

    if-ne p1, p2, :cond_4

    const p1, 0x7f080740

    goto :goto_0

    :cond_4
    const p1, 0x7f0806e2

    :goto_0
    return p1
.end method

.method public k(Lcom/truecaller/messaging/data/types/Conversation;)Landroid/graphics/drawable/Drawable;
    .locals 29

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "conversation"

    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget v2, v1, Lcom/truecaller/messaging/data/types/Conversation;->y:I

    .line 2
    iget v3, v1, Lcom/truecaller/messaging/data/types/Conversation;->e:I

    const/4 v4, 0x0

    const/4 v5, 0x6

    if-ne v2, v5, :cond_0

    .line 3
    iget-object v1, v0, Le/a/a/i1/c;->c:Le/a/p5/c0;

    const v2, 0x7f08065b

    invoke-interface {v1, v2}, Le/a/p5/c0;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto/16 :goto_6

    :cond_0
    and-int/lit8 v5, v3, 0x8

    if-eqz v5, :cond_1

    .line 4
    iget-object v1, v0, Le/a/a/i1/c;->c:Le/a/p5/c0;

    const v2, 0x7f08065a

    invoke-interface {v1, v2}, Le/a/p5/c0;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto/16 :goto_6

    :cond_1
    const/4 v5, 0x1

    and-int/2addr v3, v5

    if-nez v3, :cond_2

    goto/16 :goto_6

    :cond_2
    const/4 v3, 0x3

    if-eqz v2, :cond_8

    if-eq v2, v5, :cond_7

    const/4 v6, 0x2

    if-eq v2, v6, :cond_6

    if-eq v2, v3, :cond_5

    const/4 v6, 0x4

    if-eq v2, v6, :cond_4

    const/4 v6, 0x7

    if-eq v2, v6, :cond_3

    move-object v2, v4

    goto :goto_0

    .line 5
    :cond_3
    new-instance v2, Lcom/truecaller/messaging/data/types/BackupTransportInfo;

    iget-wide v6, v1, Lcom/truecaller/messaging/data/types/Conversation;->d:J

    invoke-direct {v2, v6, v7}, Lcom/truecaller/messaging/data/types/BackupTransportInfo;-><init>(J)V

    goto :goto_0

    .line 6
    :cond_4
    new-instance v2, Lcom/truecaller/messaging/data/types/BackupTransportInfo;

    iget-wide v6, v1, Lcom/truecaller/messaging/data/types/Conversation;->d:J

    invoke-direct {v2, v6, v7}, Lcom/truecaller/messaging/data/types/BackupTransportInfo;-><init>(J)V

    goto :goto_0

    .line 7
    :cond_5
    new-instance v2, Lcom/truecaller/messaging/transport/NullTransportInfo$b;

    invoke-direct {v2}, Lcom/truecaller/messaging/transport/NullTransportInfo$b;-><init>()V

    invoke-virtual {v2}, Lcom/truecaller/messaging/transport/NullTransportInfo$b;->a()Lcom/truecaller/messaging/transport/NullTransportInfo;

    move-result-object v2

    goto :goto_0

    :cond_6
    const/16 v24, 0x0

    const/16 v23, 0x0

    const/16 v22, 0x0

    const-wide/16 v20, 0x0

    const/16 v28, 0x0

    const/16 v26, 0x0

    const-wide/16 v17, 0x0

    const/16 v16, 0x0

    const/4 v15, 0x0

    const/4 v14, 0x0

    const/4 v13, 0x0

    const/4 v10, 0x0

    const-wide/16 v7, 0x0

    const/16 v27, -0x1

    .line 8
    iget v11, v1, Lcom/truecaller/messaging/data/types/Conversation;->v:I

    .line 9
    iget v12, v1, Lcom/truecaller/messaging/data/types/Conversation;->w:I

    .line 10
    new-instance v2, Lcom/truecaller/messaging/transport/im/ImTransportInfo;

    move-object v6, v2

    const/16 v25, 0x0

    move-object/from16 v19, v25

    const-string v9, ""

    invoke-direct/range {v6 .. v28}, Lcom/truecaller/messaging/transport/im/ImTransportInfo;-><init>(JLjava/lang/String;IIIIIIIJ[Lcom/truecaller/messaging/data/types/Reaction;JIILjava/lang/String;[Lcom/truecaller/messaging/data/types/QuickAction;IILcom/truecaller/data/entity/messaging/Participant;)V

    goto :goto_0

    .line 11
    :cond_7
    new-instance v2, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;

    invoke-direct {v2}, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;-><init>()V

    iget v6, v1, Lcom/truecaller/messaging/data/types/Conversation;->x:I

    .line 12
    iput v6, v2, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->c:I

    .line 13
    invoke-virtual {v2}, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->b()Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;

    move-result-object v2

    goto :goto_0

    .line 14
    :cond_8
    new-instance v2, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo$b;

    invoke-direct {v2}, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo$b;-><init>()V

    iget v6, v1, Lcom/truecaller/messaging/data/types/Conversation;->x:I

    .line 15
    iput v6, v2, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo$b;->c:I

    .line 16
    invoke-virtual {v2}, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo$b;->a()Lcom/truecaller/messaging/transport/sms/SmsTransportInfo;

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_11

    .line 17
    iget v1, v1, Lcom/truecaller/messaging/data/types/Conversation;->e:I

    .line 18
    invoke-interface {v2}, Lcom/truecaller/messaging/data/types/TransportInfo;->E()I

    move-result v6

    .line 19
    invoke-interface {v2}, Lcom/truecaller/messaging/data/types/TransportInfo;->L1()I

    move-result v2

    and-int/lit8 v7, v1, 0x1

    const/4 v8, 0x0

    if-nez v7, :cond_9

    goto :goto_2

    :cond_9
    and-int/lit8 v7, v1, 0x74

    if-eqz v7, :cond_a

    move v7, v5

    goto :goto_1

    :cond_a
    move v7, v8

    :goto_1
    if-eqz v7, :cond_b

    const v1, 0x7f0804eb

    goto :goto_3

    :cond_b
    if-ne v2, v3, :cond_c

    const v1, 0x7f0804ea

    goto :goto_3

    :cond_c
    if-ne v6, v3, :cond_d

    const v1, 0x7f0804e6

    goto :goto_3

    :cond_d
    if-ne v1, v5, :cond_e

    const v1, 0x7f0804ec

    goto :goto_3

    :cond_e
    :goto_2
    move v1, v8

    .line 20
    :goto_3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 21
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v2

    if-lez v2, :cond_f

    goto :goto_4

    :cond_f
    move v5, v8

    :goto_4
    if-eqz v5, :cond_10

    goto :goto_5

    :cond_10
    move-object v1, v4

    :goto_5
    if-eqz v1, :cond_11

    .line 22
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    iget-object v2, v0, Le/a/a/i1/c;->c:Le/a/p5/c0;

    invoke-interface {v2, v1}, Le/a/p5/c0;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    :cond_11
    :goto_6
    return-object v4
.end method

.method public l(Ljava/lang/String;I)Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    sget-object p1, Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;->RED:Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;

    goto :goto_0

    :cond_0
    const/4 p1, 0x6

    if-ne p2, p1, :cond_1

    .line 2
    sget-object p1, Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;->BLUE:Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;

    goto :goto_0

    .line 3
    :cond_1
    sget-object p1, Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;->DEFAULT:Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;

    :goto_0
    return-object p1
.end method

.method public m(Lcom/truecaller/messaging/data/types/Conversation;)Ljava/lang/String;
    .locals 3

    const-string v0, "conversation"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/a/i1/c;->e:Le/a/o5/b0;

    iget-object p1, p1, Lcom/truecaller/messaging/data/types/Conversation;->i:Lw3/b/a/b;

    const-string v1, "conversation.date"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-wide v1, p1, Lw3/b/a/e0/e;->a:J

    .line 3
    invoke-interface {v0, v1, v2}, Le/a/o5/b0;->k(J)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public n(Lcom/truecaller/messaging/data/types/Conversation;)Ljava/lang/String;
    .locals 2

    const-string v0, "conversation"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p1, Lcom/truecaller/messaging/data/types/Conversation;->m:[Lcom/truecaller/data/entity/messaging/Participant;

    invoke-static {v0}, Le/a/c/p/a;->r1([Lcom/truecaller/data/entity/messaging/Participant;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/truecaller/messaging/data/types/Conversation;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "conversation.participantsText"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 2
    :cond_0
    iget-object v0, p1, Lcom/truecaller/messaging/data/types/Conversation;->z:Lcom/truecaller/messaging/data/types/ImGroupInfo;

    if-eqz v0, :cond_2

    .line 3
    iget-object p1, v0, Lcom/truecaller/messaging/data/types/ImGroupInfo;->b:Ljava/lang/String;

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, ""

    :goto_0
    return-object p1

    .line 4
    :cond_2
    iget-object v0, p0, Le/a/a/i1/c;->d:Le/a/a/k/a/a/q;

    iget-object p1, p1, Lcom/truecaller/messaging/data/types/Conversation;->m:[Lcom/truecaller/data/entity/messaging/Participant;

    const/4 v1, 0x0

    aget-object p1, p1, v1

    iget-object p1, p1, Lcom/truecaller/data/entity/messaging/Participant;->e:Ljava/lang/String;

    const-string v1, "conversation.participants[0].normalizedAddress"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Le/a/a/k/a/a/q;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public o(Lcom/truecaller/messaging/data/types/Message;)Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Le/a/a/i1/c;->I(Lcom/truecaller/messaging/data/types/Message;)Ljava/util/List;

    move-result-object p1

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    .line 4
    invoke-virtual {p0, v2}, Le/a/a/i1/c;->J(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-static {v0}, Ls1/u/i;->D(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Le/a/a/i1/c;->b(ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public p(Lcom/truecaller/messaging/data/types/Message;Ls1/z/b/l;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/messaging/data/types/Message;",
            "Ls1/z/b/l<",
            "-",
            "Lcom/truecaller/messaging/data/types/Entity;",
            "Ljava/lang/Boolean;",
            ">;)I"
        }
    .end annotation

    const-string v0, "negativePredicate"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/truecaller/messaging/data/types/Message;->f()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-object v0, p1, Lcom/truecaller/messaging/data/types/Message;->o:[Lcom/truecaller/messaging/data/types/Entity;

    const-string v2, "message.entities"

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v4, v0, v1

    const-string v5, "it"

    .line 4
    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v5, p2

    check-cast v5, Le/a/a/c/k/a/k$c;

    invoke-virtual {v5, v4}, Le/a/a/c/k/a/k$c;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    add-int/lit8 v3, v3, 0x1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_2
    iget-object p1, p1, Lcom/truecaller/messaging/data/types/Message;->o:[Lcom/truecaller/messaging/data/types/Entity;

    array-length p1, p1

    sub-int v1, p1, v3

    :goto_1
    return v1
.end method

.method public q(Lcom/truecaller/messaging/data/types/ReplySnippet;)Ljava/lang/String;
    .locals 2

    const-string v0, "replySnippet"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget v0, p1, Lcom/truecaller/messaging/data/types/ReplySnippet;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object p1, p0, Le/a/a/i1/c;->c:Le/a/p5/c0;

    const v0, 0x7f120437

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p1, v0, v1}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "resourceProvider.getStri\u2026ring.ParticipantSelfName)"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 3
    :cond_0
    iget-object v0, p1, Lcom/truecaller/messaging/data/types/ReplySnippet;->d:Ljava/lang/String;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p1, Lcom/truecaller/messaging/data/types/ReplySnippet;->e:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 5
    iget-object p1, p1, Lcom/truecaller/messaging/data/types/ReplySnippet;->f:Ljava/lang/Integer;

    const/4 v1, 0x3

    if-nez p1, :cond_2

    goto :goto_0

    .line 6
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v1, :cond_3

    .line 7
    iget-object p1, p0, Le/a/a/i1/c;->d:Le/a/a/k/a/a/q;

    invoke-interface {p1, v0}, Le/a/a/k/a/a/q;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_3
    :goto_0
    move-object p1, v0

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_5

    goto :goto_2

    :cond_5
    const-string p1, ""

    :goto_2
    return-object p1
.end method

.method public r(Ljava/lang/String;II)Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;
    .locals 0

    and-int/lit8 p3, p3, 0x8

    if-eqz p3, :cond_0

    .line 1
    sget-object p1, Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;->RED:Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0, p1, p2}, Le/a/a/i1/c;->l(Ljava/lang/String;I)Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public s()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Le/a/a/c/j8/a;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/a/i1/c;->a:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public t(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-static {p1}, Ls1/f0/v;->g0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const/16 v2, 0xa

    const/16 v3, 0x20

    const/4 v4, 0x4

    invoke-static {p1, v2, v3, v1, v4}, Ls1/f0/r;->s(Ljava/lang/String;CCZI)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const p1, 0x7f100019

    const/4 v2, 0x1

    if-le p2, v2, :cond_3

    .line 2
    iget-object p3, p0, Le/a/a/i1/c;->c:Le/a/p5/c0;

    new-array v3, v2, [Ljava/lang/Object;

    .line 3
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    .line 4
    invoke-interface {p3, p1, p2, v3}, Le/a/p5/c0;->k(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-lez p2, :cond_1

    move v1, v2

    :cond_1
    if-eqz v1, :cond_2

    const-string p2, ", "

    .line 6
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    :cond_2
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    :cond_3
    if-ne p2, v2, :cond_c

    if-eqz p3, :cond_c

    .line 8
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-nez p2, :cond_4

    move p2, v2

    goto :goto_1

    :cond_4
    move p2, v1

    :goto_1
    if-eqz p2, :cond_c

    .line 9
    sget-object p2, Lcom/truecaller/messaging/data/types/Entity;->h:Lcom/truecaller/messaging/data/types/Entity$a;

    invoke-virtual {p2, p3}, Lcom/truecaller/messaging/data/types/Entity$a;->e(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object p1, p0, Le/a/a/i1/c;->c:Le/a/p5/c0;

    const p2, 0x7f1203a1

    new-array p3, v1, [Ljava/lang/Object;

    invoke-interface {p1, p2, p3}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_2

    .line 10
    :cond_5
    invoke-virtual {p2, p3}, Lcom/truecaller/messaging/data/types/Entity$a;->f(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object p1, p0, Le/a/a/i1/c;->c:Le/a/p5/c0;

    const p2, 0x7f1203a2

    new-array p3, v1, [Ljava/lang/Object;

    invoke-interface {p1, p2, p3}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 11
    :cond_6
    invoke-virtual {p2, p3}, Lcom/truecaller/messaging/data/types/Entity$a;->l(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object p1, p0, Le/a/a/i1/c;->c:Le/a/p5/c0;

    const p2, 0x7f1203be

    new-array p3, v1, [Ljava/lang/Object;

    invoke-interface {p1, p2, p3}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 12
    :cond_7
    invoke-virtual {p2, p3}, Lcom/truecaller/messaging/data/types/Entity$a;->k(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object p1, p0, Le/a/a/i1/c;->c:Le/a/p5/c0;

    const p2, 0x7f12037e

    new-array p3, v1, [Ljava/lang/Object;

    invoke-interface {p1, p2, p3}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 13
    :cond_8
    invoke-virtual {p2, p3}, Lcom/truecaller/messaging/data/types/Entity$a;->c(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object p1, p0, Le/a/a/i1/c;->c:Le/a/p5/c0;

    const p2, 0x7f1203bf

    new-array p3, v1, [Ljava/lang/Object;

    invoke-interface {p1, p2, p3}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 14
    :cond_9
    invoke-virtual {p2, p3}, Lcom/truecaller/messaging/data/types/Entity$a;->d(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object p1, p0, Le/a/a/i1/c;->c:Le/a/p5/c0;

    const p2, 0x7f12038f

    new-array p3, v1, [Ljava/lang/Object;

    invoke-interface {p1, p2, p3}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 15
    :cond_a
    invoke-virtual {p2, p3}, Lcom/truecaller/messaging/data/types/Entity$a;->h(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_b

    iget-object p1, p0, Le/a/a/i1/c;->c:Le/a/p5/c0;

    const p2, 0x7f1203a3

    new-array p3, v1, [Ljava/lang/Object;

    invoke-interface {p1, p2, p3}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 16
    :cond_b
    iget-object p2, p0, Le/a/a/i1/c;->c:Le/a/p5/c0;

    new-array p3, v2, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, p3, v1

    invoke-interface {p2, p1, v2, p3}, Le/a/p5/c0;->k(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 17
    :goto_2
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    :cond_c
    :goto_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "fullText.toString()"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public u(Lcom/truecaller/messaging/data/types/Conversation;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0, p1}, Le/a/a/i1/c;->H(Lcom/truecaller/messaging/data/types/Conversation;)Lcom/truecaller/messaging/conversation/ConversationAction;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    sget-object v0, Lcom/truecaller/messaging/conversation/ConversationAction;->TOP_BLOCK:Lcom/truecaller/messaging/conversation/ConversationAction;

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public v(Lcom/truecaller/messaging/data/types/Message;)Ljava/lang/String;
    .locals 3

    const-string v0, "message"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1}, Le/a/a/i1/c;->I(Lcom/truecaller/messaging/data/types/Message;)Ljava/util/List;

    move-result-object p1

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    .line 4
    invoke-virtual {p0, v2}, Le/a/a/i1/c;->J(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v1, :cond_2

    return-object v2

    .line 6
    :cond_2
    invoke-static {v0}, Ls1/u/i;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 7
    sget-object v0, Lcom/truecaller/messaging/data/types/Entity;->h:Lcom/truecaller/messaging/data/types/Entity$a;

    invoke-virtual {v0, p1}, Lcom/truecaller/messaging/data/types/Entity$a;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v2, "\ud83c\udf9e\ufe0f"

    goto :goto_1

    .line 8
    :cond_3
    invoke-virtual {v0, p1}, Lcom/truecaller/messaging/data/types/Entity$a;->f(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v2, "\ud83c\udf04"

    goto :goto_1

    .line 9
    :cond_4
    invoke-virtual {v0, p1}, Lcom/truecaller/messaging/data/types/Entity$a;->l(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v2, "\ud83c\udfa5"

    goto :goto_1

    .line 10
    :cond_5
    invoke-virtual {v0, p1}, Lcom/truecaller/messaging/data/types/Entity$a;->k(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v2, "\ud83d\udc64"

    goto :goto_1

    .line 11
    :cond_6
    invoke-virtual {v0, p1}, Lcom/truecaller/messaging/data/types/Entity$a;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v2, "\ud83c\udf99"

    goto :goto_1

    .line 12
    :cond_7
    invoke-virtual {v0, p1}, Lcom/truecaller/messaging/data/types/Entity$a;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v2, "\ud83d\udcc4"

    goto :goto_1

    .line 13
    :cond_8
    invoke-virtual {v0, p1}, Lcom/truecaller/messaging/data/types/Entity$a;->h(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9

    const-string v2, "\ud83d\udccd"

    :cond_9
    :goto_1
    return-object v2
.end method

.method public w(Le/a/o5/d2/a;Z)Ljava/lang/String;
    .locals 10

    const-string v0, "place"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    iget-object v1, p1, Le/a/o5/d2/a;->a:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p2, :cond_3

    .line 3
    iget-wide v5, p1, Le/a/o5/d2/a;->b:D

    iget-wide v7, p1, Le/a/o5/d2/a;->c:D

    iget-object v9, p1, Le/a/o5/d2/a;->d:Ljava/lang/CharSequence;

    move-object v4, p0

    invoke-virtual/range {v4 .. v9}, Le/a/a/i1/c;->C(DDLjava/lang/CharSequence;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_1

    .line 4
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v2

    goto :goto_1

    :cond_1
    :goto_0
    move p1, v3

    :goto_1
    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    const-string p1, " "

    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    :goto_2
    if-eqz v1, :cond_4

    .line 6
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    :cond_4
    if-eqz v1, :cond_5

    .line 7
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_6

    :cond_5
    move v2, v3

    :cond_6
    if-nez v2, :cond_7

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 9
    :cond_7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "StringBuilder().apply(builderAction).toString()"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public x(Z)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/i1/c;->c:Le/a/p5/c0;

    if-eqz p1, :cond_0

    const p1, 0x7f1203b0

    goto :goto_0

    :cond_0
    const p1, 0x7f1203b1

    :goto_0
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0, p1, v1}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "resourceProvider.getStri\u2026sageStatusNudgeToSendSms)"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public y(Ljava/lang/String;)Z
    .locals 6

    const-string v0, "text"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Le/a/t/a/y/b;->a:Le/a/t/a/y/b;

    const-string v1, "input"

    .line 2
    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    .line 3
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_3

    .line 4
    sget-object v4, Le/a/t/a/u/i;->a:Ljava/util/concurrent/FutureTask;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/t/a/u/f;

    if-eqz v4, :cond_2

    .line 5
    iget-object v4, v4, Le/a/t/a/u/f;->a:Le/a/t/a/u/c;

    .line 6
    invoke-virtual {v0, p1, v2, v2, v4}, Le/a/t/a/y/b;->b(Ljava/lang/CharSequence;IILe/a/t/a/u/c;)Ls1/k;

    move-result-object v4

    .line 7
    iget-object v5, v4, Ls1/k;->a:Ljava/lang/Object;

    .line 8
    check-cast v5, Le/a/t/a/u/d;

    .line 9
    iget-object v4, v4, Ls1/k;->b:Ljava/lang/Object;

    .line 10
    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    if-eqz v5, :cond_1

    if-eq v2, v3, :cond_0

    goto :goto_2

    :cond_0
    move v3, v4

    :cond_1
    move v2, v4

    goto :goto_0

    .line 11
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Emoji data loader has not been set"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x1

    if-ne v3, v0, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_4

    move p1, v2

    goto :goto_1

    :cond_4
    move p1, v1

    :goto_1
    if-eqz p1, :cond_5

    move v1, v2

    :cond_5
    :goto_2
    return v1
.end method

.method public z(Lcom/truecaller/messaging/data/types/Message;)Ljava/lang/String;
    .locals 4

    if-nez p1, :cond_0

    const-string p1, ""

    return-object p1

    .line 1
    :cond_0
    invoke-virtual {p0, p1}, Le/a/a/i1/c;->I(Lcom/truecaller/messaging/data/types/Message;)Ljava/util/List;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    .line 4
    invoke-virtual {p0, v3}, Le/a/a/i1/c;->J(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_2
    invoke-virtual {p1}, Lcom/truecaller/messaging/data/types/Message;->a()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v1}, Ls1/u/i;->D(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Le/a/a/i1/c;->t(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
