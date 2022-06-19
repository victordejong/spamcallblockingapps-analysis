.class public final Lcom/google/i18n/phonenumbers/q/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/i18n/phonenumbers/q/a;


# instance fields
.field private final a:Lcom/google/i18n/phonenumbers/q/c;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/i18n/phonenumbers/q/c;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Lcom/google/i18n/phonenumbers/q/c;-><init>(I)V

    iput-object v0, p0, Lcom/google/i18n/phonenumbers/q/b;->a:Lcom/google/i18n/phonenumbers/q/c;

    return-void
.end method

.method public static b()Lcom/google/i18n/phonenumbers/q/a;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/i18n/phonenumbers/q/b;

    invoke-direct {v0}, Lcom/google/i18n/phonenumbers/q/b;-><init>()V

    return-object v0
.end method

.method private static c(Ljava/lang/CharSequence;Ljava/util/regex/Pattern;Z)Z
    .locals 0

    .line 1
    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 3
    :cond_0
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p2, 0x1

    :cond_1
    return p2
.end method


# virtual methods
.method public a(Ljava/lang/CharSequence;Lcom/google/i18n/phonenumbers/l;Z)Z
    .locals 1

    .line 1
    invoke-virtual {p2}, Lcom/google/i18n/phonenumbers/l;->a()Ljava/lang/String;

    move-result-object p2

    .line 2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/q/b;->a:Lcom/google/i18n/phonenumbers/q/c;

    invoke-virtual {v0, p2}, Lcom/google/i18n/phonenumbers/q/c;->a(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p2

    invoke-static {p1, p2, p3}, Lcom/google/i18n/phonenumbers/q/b;->c(Ljava/lang/CharSequence;Ljava/util/regex/Pattern;Z)Z

    move-result p1

    return p1
.end method
