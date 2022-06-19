.class public final Le/a/f4/g/l;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Le/m/f/a/j$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Le/m/f/a/j$b;->c:Le/m/f/a/j$b;

    sget-object v1, Le/m/f/a/j$b;->d:Le/m/f/a/j$b;

    sget-object v2, Le/m/f/a/j$b;->e:Le/m/f/a/j$b;

    .line 2
    invoke-static {v0, v1, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    .line 3
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Le/a/f4/g/l;->a:Ljava/util/Set;

    return-void
.end method

.method public static a(Lcom/truecaller/data/dto/ContactDto$Contact;JLjava/lang/String;Le/a/b0/b/e;Le/m/f/a/j;)V
    .locals 7

    .line 1
    iput-wide p1, p0, Lcom/truecaller/data/dto/ContactDto$Contact;->searchTime:J

    .line 2
    iput-object p3, p0, Lcom/truecaller/data/dto/ContactDto$Contact;->searchQuery:Ljava/lang/String;

    const/4 p1, 0x1

    .line 3
    iput p1, p0, Lcom/truecaller/data/dto/ContactDto$Contact;->source:I

    .line 4
    iget-object p2, p0, Lcom/truecaller/data/dto/ContactDto$Contact;->access:Ljava/lang/String;

    const-string v0, "public"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 5
    iput-object v0, p0, Lcom/truecaller/data/dto/ContactDto$Contact;->phones:Ljava/util/List;

    goto :goto_1

    .line 6
    :cond_0
    iget-object p2, p0, Lcom/truecaller/data/dto/ContactDto$Contact;->phones:Ljava/util/List;

    if-eqz p2, :cond_5

    .line 7
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/truecaller/data/dto/ContactDto$Contact$PhoneNumber;

    .line 8
    iget-object v2, v1, Lcom/truecaller/data/dto/ContactDto$Contact$PhoneNumber;->type:Ljava/lang/String;

    const-string v3, "senderId"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 9
    iget-object v2, v1, Lcom/truecaller/data/dto/ContactDto$Contact$PhoneNumber;->id:Ljava/lang/String;

    iput-object v2, v1, Lcom/truecaller/data/dto/ContactDto$Contact$PhoneNumber;->e164Format:Ljava/lang/String;

    .line 10
    :cond_2
    iget-object v2, v1, Lcom/truecaller/data/dto/ContactDto$Contact$PhoneNumber;->telType:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 11
    sget v2, Lcom/truecaller/data/dto/ContactDto$Contact$PhoneNumber;->EMPTY_TEL_TYPE:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/truecaller/data/dto/ContactDto$Contact$PhoneNumber;->telType:Ljava/lang/String;

    .line 12
    :cond_3
    iget-object v2, p0, Lcom/truecaller/data/dto/ContactDto$Contact;->defaultNumber:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    .line 13
    iget-object v4, v1, Lcom/truecaller/data/dto/ContactDto$Contact$PhoneNumber;->e164Format:Ljava/lang/String;

    aput-object v4, v2, v3

    iget-object v3, v1, Lcom/truecaller/data/dto/ContactDto$Contact$PhoneNumber;->nationalFormat:Ljava/lang/String;

    aput-object v3, v2, p1

    invoke-static {v2}, Le/a/p5/g0;->G([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/truecaller/data/dto/ContactDto$Contact;->defaultNumber:Ljava/lang/String;

    .line 14
    :cond_4
    iget-object v2, v1, Lcom/truecaller/data/dto/ContactDto$Contact$PhoneNumber;->rawNumberFormat:Ljava/lang/String;

    if-nez v2, :cond_1

    sget-object v2, Le/a/f4/g/l;->a:Ljava/util/Set;

    iget-object v3, p0, Lcom/truecaller/data/dto/ContactDto$Contact;->searchQuery:Ljava/lang/String;

    iget-object v4, v1, Lcom/truecaller/data/dto/ContactDto$Contact$PhoneNumber;->e164Format:Ljava/lang/String;

    .line 15
    invoke-virtual {p5, v3, v4}, Le/m/f/a/j;->E(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Le/m/f/a/j$b;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 16
    iput-object p3, v1, Lcom/truecaller/data/dto/ContactDto$Contact$PhoneNumber;->rawNumberFormat:Ljava/lang/String;

    goto :goto_0

    .line 17
    :cond_5
    :goto_1
    iget-object p2, p0, Lcom/truecaller/data/dto/ContactDto$Contact;->businessProfileNetworkResponse:Lcom/truecaller/data/dto/ContactDto$Contact$BusinessProfile;

    if-eqz p2, :cond_14

    .line 18
    new-instance p3, Lcom/truecaller/data/dto/ContactDto$Contact$Business;

    invoke-direct {p3}, Lcom/truecaller/data/dto/ContactDto$Contact$Business;-><init>()V

    .line 19
    iget-object p5, p2, Lcom/truecaller/data/dto/ContactDto$Contact$BusinessProfile;->branch:Ljava/lang/String;

    iput-object p5, p3, Lcom/truecaller/data/dto/ContactDto$Contact$Business;->branch:Ljava/lang/String;

    .line 20
    iget-object p5, p2, Lcom/truecaller/data/dto/ContactDto$Contact$BusinessProfile;->department:Ljava/lang/String;

    iput-object p5, p3, Lcom/truecaller/data/dto/ContactDto$Contact$Business;->department:Ljava/lang/String;

    .line 21
    iget-object p5, p2, Lcom/truecaller/data/dto/ContactDto$Contact$BusinessProfile;->companySize:Ljava/lang/String;

    iput-object p5, p3, Lcom/truecaller/data/dto/ContactDto$Contact$Business;->companySize:Ljava/lang/String;

    .line 22
    iget-object p5, p2, Lcom/truecaller/data/dto/ContactDto$Contact$BusinessProfile;->openHours:Ljava/util/List;

    const-string v1, "|"

    if-eqz p5, :cond_a

    .line 23
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    iget-object v2, p2, Lcom/truecaller/data/dto/ContactDto$Contact$BusinessProfile;->openHours:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/truecaller/data/dto/ContactDto$Contact$BusinessProfile$OpenHours;

    .line 25
    iget-object v4, v3, Lcom/truecaller/data/dto/ContactDto$Contact$BusinessProfile$OpenHours;->weekdays:Ljava/util/List;

    if-eqz v4, :cond_6

    iget-object v5, v3, Lcom/truecaller/data/dto/ContactDto$Contact$BusinessProfile$OpenHours;->opens:Ljava/lang/String;

    if-eqz v5, :cond_6

    iget-object v5, v3, Lcom/truecaller/data/dto/ContactDto$Contact$BusinessProfile$OpenHours;->closes:Ljava/lang/String;

    if-nez v5, :cond_7

    goto :goto_2

    .line 26
    :cond_7
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 27
    invoke-virtual {p5, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_8
    const-string v4, " "

    .line 28
    invoke-virtual {p5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Lcom/truecaller/data/dto/ContactDto$Contact$BusinessProfile$OpenHours;->opens:Ljava/lang/String;

    invoke-virtual {p5, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v3, Lcom/truecaller/data/dto/ContactDto$Contact$BusinessProfile$OpenHours;->closes:Ljava/lang/String;

    invoke-virtual {p5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 29
    :cond_9
    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    iput-object p5, p3, Lcom/truecaller/data/dto/ContactDto$Contact$Business;->openingHours:Ljava/lang/String;

    goto :goto_4

    .line 30
    :cond_a
    iput-object v0, p3, Lcom/truecaller/data/dto/ContactDto$Contact$Business;->openingHours:Ljava/lang/String;

    .line 31
    :goto_4
    iget-object p5, p2, Lcom/truecaller/data/dto/ContactDto$Contact$BusinessProfile;->landLine:Ljava/lang/String;

    iput-object p5, p3, Lcom/truecaller/data/dto/ContactDto$Contact$Business;->landline:Ljava/lang/String;

    .line 32
    iget-object p5, p2, Lcom/truecaller/data/dto/ContactDto$Contact$BusinessProfile;->score:Ljava/lang/String;

    iput-object p5, p3, Lcom/truecaller/data/dto/ContactDto$Contact$Business;->score:Ljava/lang/String;

    .line 33
    iget-object p5, p2, Lcom/truecaller/data/dto/ContactDto$Contact$BusinessProfile;->swishNumber:Ljava/lang/String;

    iput-object p5, p3, Lcom/truecaller/data/dto/ContactDto$Contact$Business;->swishNumber:Ljava/lang/String;

    .line 34
    iget-object p5, p2, Lcom/truecaller/data/dto/ContactDto$Contact$BusinessProfile;->mediaCallerIDs:Ljava/util/List;

    const-string v2, ";"

    const-string v3, "UTF-8"

    if-eqz p5, :cond_c

    invoke-interface {p5}, Ljava/util/List;->isEmpty()Z

    move-result p5

    if-nez p5, :cond_c

    .line 35
    iget-object p5, p2, Lcom/truecaller/data/dto/ContactDto$Contact$BusinessProfile;->mediaCallerIDs:Ljava/util/List;

    const-string v4, "mediaCallerIDsList"

    .line 36
    invoke-static {p5, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    invoke-interface {p5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p5

    :goto_5
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/truecaller/data/dto/ContactDto$Contact$BusinessProfile$MediaCallerIDs;

    .line 39
    :try_start_0
    iget-object v6, v5, Lcom/truecaller/data/dto/ContactDto$Contact$BusinessProfile$MediaCallerIDs;->url:Ljava/lang/String;

    invoke-static {v6, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    iget-object v6, v5, Lcom/truecaller/data/dto/ContactDto$Contact$BusinessProfile$MediaCallerIDs;->mediaType:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    iget-object v6, v5, Lcom/truecaller/data/dto/ContactDto$Contact$BusinessProfile$MediaCallerIDs;->orientation:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    iget-object v5, v5, Lcom/truecaller/data/dto/ContactDto$Contact$BusinessProfile$MediaCallerIDs;->ttl:Ljava/lang/Long;

    const-string v6, "mediaCallerId.ttl"

    invoke-static {v5, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception v5

    .line 43
    invoke-static {v5}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    goto :goto_5

    .line 44
    :cond_b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    const-string v4, "mediaCallerIDs.toString()"

    invoke-static {p5, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    iput-object p5, p3, Lcom/truecaller/data/dto/ContactDto$Contact$Business;->mediaCallerIDs:Ljava/lang/String;

    .line 46
    :cond_c
    iget-object p5, p2, Lcom/truecaller/data/dto/ContactDto$Contact$BusinessProfile;->appStores:Ljava/util/List;

    if-eqz p5, :cond_e

    invoke-interface {p5}, Ljava/util/List;->isEmpty()Z

    move-result p5

    if-nez p5, :cond_e

    .line 47
    iget-object p5, p2, Lcom/truecaller/data/dto/ContactDto$Contact$BusinessProfile;->appStores:Ljava/util/List;

    const-string v4, "appStoresList"

    .line 48
    invoke-static {p5, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    invoke-interface {p5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p5

    :goto_6
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/truecaller/data/dto/ContactDto$Contact$BusinessProfile$AppStores;

    .line 51
    :try_start_1
    iget-object v6, v5, Lcom/truecaller/data/dto/ContactDto$Contact$BusinessProfile$AppStores;->url:Ljava/lang/String;

    invoke-static {v6, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    iget-object v5, v5, Lcom/truecaller/data/dto/ContactDto$Contact$BusinessProfile$AppStores;->linkType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_6

    :catch_1
    move-exception v5

    .line 53
    invoke-static {v5}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    goto :goto_6

    .line 54
    :cond_d
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    const-string v4, "appStoreString.toString()"

    invoke-static {p5, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    iput-object p5, p3, Lcom/truecaller/data/dto/ContactDto$Contact$Business;->appStores:Ljava/lang/String;

    .line 56
    :cond_e
    iget-object p5, p2, Lcom/truecaller/data/dto/ContactDto$Contact$BusinessProfile;->brandedMedia:Ljava/util/List;

    if-eqz p5, :cond_10

    invoke-interface {p5}, Ljava/util/List;->isEmpty()Z

    move-result p5

    if-nez p5, :cond_10

    .line 57
    iget-object p5, p2, Lcom/truecaller/data/dto/ContactDto$Contact$BusinessProfile;->brandedMedia:Ljava/util/List;

    const-string v4, "brandedMediaList"

    .line 58
    invoke-static {p5, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    invoke-interface {p5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p5

    :goto_7
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/truecaller/data/dto/ContactDto$Contact$BusinessProfile$BrandedMedia;

    .line 61
    :try_start_2
    iget-object v6, v5, Lcom/truecaller/data/dto/ContactDto$Contact$BusinessProfile$BrandedMedia;->url:Ljava/lang/String;

    invoke-static {v6, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    iget-object v5, v5, Lcom/truecaller/data/dto/ContactDto$Contact$BusinessProfile$BrandedMedia;->mediaType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_7

    :catch_2
    move-exception v5

    .line 63
    invoke-static {v5}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    goto :goto_7

    .line 64
    :cond_f
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    const-string v2, "brandedMediaString.toString()"

    invoke-static {p5, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    iput-object p5, p3, Lcom/truecaller/data/dto/ContactDto$Contact$Business;->brandedMedia:Ljava/lang/String;

    .line 66
    :cond_10
    iput-object p3, p0, Lcom/truecaller/data/dto/ContactDto$Contact;->business:Lcom/truecaller/data/dto/ContactDto$Contact$Business;

    .line 67
    new-instance p3, Lcom/truecaller/data/dto/ContactDto$Contact$Style;

    invoke-direct {p3}, Lcom/truecaller/data/dto/ContactDto$Contact$Style;-><init>()V

    .line 68
    iget-object p5, p2, Lcom/truecaller/data/dto/ContactDto$Contact$BusinessProfile;->backgroundColor:Ljava/lang/String;

    iput-object p5, p3, Lcom/truecaller/data/dto/ContactDto$Contact$Style;->backgroundColor:Ljava/lang/String;

    .line 69
    iget-object p5, p2, Lcom/truecaller/data/dto/ContactDto$Contact$BusinessProfile;->imageUrls:Ljava/util/List;

    if-eqz p5, :cond_13

    invoke-interface {p5}, Ljava/util/List;->isEmpty()Z

    move-result p5

    if-eqz p5, :cond_11

    goto :goto_9

    .line 70
    :cond_11
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    iget-object p2, p2, Lcom/truecaller/data/dto/ContactDto$Contact$BusinessProfile;->imageUrls:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_8
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 72
    :try_start_3
    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_8

    :catch_3
    move-exception v2

    .line 74
    invoke-static {v2}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    goto :goto_8

    .line 75
    :cond_12
    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p3, Lcom/truecaller/data/dto/ContactDto$Contact$Style;->imageUrls:Ljava/lang/String;

    goto :goto_a

    .line 76
    :cond_13
    :goto_9
    iput-object v0, p3, Lcom/truecaller/data/dto/ContactDto$Contact$Style;->imageUrls:Ljava/lang/String;

    .line 77
    :goto_a
    iput-object p3, p0, Lcom/truecaller/data/dto/ContactDto$Contact;->style:Lcom/truecaller/data/dto/ContactDto$Contact$Style;

    .line 78
    iget-object p2, p0, Lcom/truecaller/data/dto/ContactDto$Contact;->badges:Ljava/util/List;

    const-string p3, "business"

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    :cond_14
    iget-object p2, p0, Lcom/truecaller/data/dto/ContactDto$Contact;->spamInfo:Lcom/truecaller/data/dto/ContactDto$Contact$SpamInfo;

    if-eqz p2, :cond_18

    .line 80
    new-instance p3, Lcom/truecaller/data/dto/ContactDto$Contact$SpamData;

    invoke-direct {p3}, Lcom/truecaller/data/dto/ContactDto$Contact$SpamData;-><init>()V

    .line 81
    iget-object p5, p2, Lcom/truecaller/data/dto/ContactDto$Contact$SpamInfo;->spamStats:Lcom/truecaller/data/dto/ContactDto$Contact$SpamInfo$SpamStats;

    const-string v1, ""

    const-string v2, "\\s"

    if-eqz p5, :cond_16

    .line 82
    iget-object v3, p5, Lcom/truecaller/data/dto/ContactDto$Contact$SpamInfo$SpamStats;->numReports60days:Ljava/lang/Integer;

    iput-object v3, p3, Lcom/truecaller/data/dto/ContactDto$Contact$SpamData;->numReports60days:Ljava/lang/Number;

    .line 83
    iget-object v3, p5, Lcom/truecaller/data/dto/ContactDto$Contact$SpamInfo$SpamStats;->numCalls60days:Ljava/lang/Integer;

    iput-object v3, p3, Lcom/truecaller/data/dto/ContactDto$Contact$SpamData;->numCalls60days:Ljava/lang/Number;

    .line 84
    iget-object v3, p5, Lcom/truecaller/data/dto/ContactDto$Contact$SpamInfo$SpamStats;->numCalls60DaysPointerPosition:Ljava/lang/Integer;

    iput-object v3, p3, Lcom/truecaller/data/dto/ContactDto$Contact$SpamData;->numCalls60DaysPointerPosition:Ljava/lang/Number;

    .line 85
    iget-object p5, p5, Lcom/truecaller/data/dto/ContactDto$Contact$SpamInfo$SpamStats;->numCallsHourly:Ljava/util/List;

    if-eqz p5, :cond_15

    .line 86
    invoke-virtual {p5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p5

    .line 87
    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, p1

    invoke-virtual {p5, p1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p5, v2, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    iput-object p5, p3, Lcom/truecaller/data/dto/ContactDto$Contact$SpamData;->numCallsHourly:Ljava/lang/String;

    goto :goto_b

    .line 88
    :cond_15
    iput-object v0, p3, Lcom/truecaller/data/dto/ContactDto$Contact$SpamData;->numCallsHourly:Ljava/lang/String;

    goto :goto_b

    .line 89
    :cond_16
    iput-object v0, p3, Lcom/truecaller/data/dto/ContactDto$Contact$SpamData;->numReports60days:Ljava/lang/Number;

    .line 90
    iput-object v0, p3, Lcom/truecaller/data/dto/ContactDto$Contact$SpamData;->numCalls60days:Ljava/lang/Number;

    .line 91
    iput-object v0, p3, Lcom/truecaller/data/dto/ContactDto$Contact$SpamData;->numCalls60DaysPointerPosition:Ljava/lang/Number;

    .line 92
    iput-object v0, p3, Lcom/truecaller/data/dto/ContactDto$Contact$SpamData;->numCallsHourly:Ljava/lang/String;

    .line 93
    :goto_b
    iget-object p5, p2, Lcom/truecaller/data/dto/ContactDto$Contact$SpamInfo;->spamCategories:Ljava/util/List;

    if-eqz p5, :cond_17

    .line 94
    invoke-virtual {p5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p5

    .line 95
    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, p1

    invoke-virtual {p5, p1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/data/dto/ContactDto$Contact;->spamCategoryIds:Ljava/lang/String;

    goto :goto_c

    .line 96
    :cond_17
    iput-object v0, p0, Lcom/truecaller/data/dto/ContactDto$Contact;->spamCategoryIds:Ljava/lang/String;

    .line 97
    :goto_c
    iget-object p1, p2, Lcom/truecaller/data/dto/ContactDto$Contact$SpamInfo;->spamVersion:Ljava/lang/Integer;

    iput-object p1, p3, Lcom/truecaller/data/dto/ContactDto$Contact$SpamData;->spamVersion:Ljava/lang/Integer;

    .line 98
    iput-object p3, p0, Lcom/truecaller/data/dto/ContactDto$Contact;->spamData:Lcom/truecaller/data/dto/ContactDto$Contact$SpamData;

    .line 99
    iget-object p1, p2, Lcom/truecaller/data/dto/ContactDto$Contact$SpamInfo;->spamScore:Ljava/lang/Integer;

    iput-object p1, p0, Lcom/truecaller/data/dto/ContactDto$Contact;->spamScore:Ljava/lang/Number;

    .line 100
    iget-object p1, p2, Lcom/truecaller/data/dto/ContactDto$Contact$SpamInfo;->spamType:Ljava/lang/String;

    iput-object p1, p0, Lcom/truecaller/data/dto/ContactDto$Contact;->spamType:Ljava/lang/String;

    .line 101
    :cond_18
    instance-of p1, p4, Le/a/b0/b/e$a;

    if-nez p1, :cond_19

    .line 102
    iput-object v0, p0, Lcom/truecaller/data/dto/ContactDto$Contact;->imId:Ljava/lang/String;

    :cond_19
    return-void
.end method

.method public static b(Lcom/truecaller/data/dto/ContactDto$Contact;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/truecaller/data/dto/ContactDto$Contact;->imId:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/truecaller/data/dto/ContactDto$Contact;->phones:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/truecaller/data/dto/ContactDto$Contact;->phones:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/truecaller/data/dto/ContactDto$Contact$PhoneNumber;

    iget-object v0, v0, Lcom/truecaller/data/dto/ContactDto$Contact$PhoneNumber;->e164Format:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 4
    :goto_0
    invoke-static {}, Lcom/truecaller/TrueApp;->b0()Lcom/truecaller/TrueApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/truecaller/TrueApp;->s()Le/a/j2;

    move-result-object v2

    invoke-interface {v2}, Le/a/j2;->w5()Le/a/r2/f;

    move-result-object v2

    .line 5
    invoke-static {v0}, Lw3/c/a/a/a/h;->m(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 6
    invoke-interface {v2}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/a/k/a/e1;

    iget-object v4, p0, Lcom/truecaller/data/dto/ContactDto$Contact;->imId:Ljava/lang/String;

    invoke-interface {v3, v4, v0, v1}, Le/a/a/k/a/e1;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/truecaller/data/dto/ContactDto$Contact;->id:Ljava/lang/String;

    invoke-static {v0}, Lw3/c/a/a/a/h;->m(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8
    invoke-interface {v2}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/a/k/a/e1;

    iget-object v2, p0, Lcom/truecaller/data/dto/ContactDto$Contact;->imId:Ljava/lang/String;

    iget-object p0, p0, Lcom/truecaller/data/dto/ContactDto$Contact;->id:Ljava/lang/String;

    invoke-interface {v0, v2, p0, v1}, Le/a/a/k/a/e1;->f(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_3
    :goto_1
    return-void
.end method
