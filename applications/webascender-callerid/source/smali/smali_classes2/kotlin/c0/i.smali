.class final Lkotlin/c0/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/c0/h;


# instance fields
.field private final a:Lkotlin/c0/g;

.field private final b:Ljava/util/regex/Matcher;


# direct methods
.method public constructor <init>(Ljava/util/regex/Matcher;Ljava/lang/CharSequence;)V
    .locals 1

    const-string v0, "matcher"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "input"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/c0/i;->b:Ljava/util/regex/Matcher;

    .line 2
    new-instance p1, Lkotlin/c0/i$a;

    invoke-direct {p1, p0}, Lkotlin/c0/i$a;-><init>(Lkotlin/c0/i;)V

    iput-object p1, p0, Lkotlin/c0/i;->a:Lkotlin/c0/g;

    return-void
.end method

.method public static final synthetic c(Lkotlin/c0/i;)Ljava/util/regex/MatchResult;
    .locals 0

    .line 1
    invoke-direct {p0}, Lkotlin/c0/i;->d()Ljava/util/regex/MatchResult;

    move-result-object p0

    return-object p0
.end method

.method private final d()Ljava/util/regex/MatchResult;
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlin/c0/i;->b:Ljava/util/regex/Matcher;

    return-object v0
.end method


# virtual methods
.method public a()Lkotlin/c0/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlin/c0/i;->a:Lkotlin/c0/g;

    return-object v0
.end method

.method public b()Lkotlin/z/c;
    .locals 1

    .line 1
    invoke-direct {p0}, Lkotlin/c0/i;->d()Ljava/util/regex/MatchResult;

    move-result-object v0

    invoke-static {v0}, Lkotlin/c0/k;->b(Ljava/util/regex/MatchResult;)Lkotlin/z/c;

    move-result-object v0

    return-object v0
.end method
