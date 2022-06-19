.class public Lg/g/a/a/i/n/j;
.super Lretrofit2/CallAdapter$Factory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg/g/a/a/i/n/j$a;
    }
.end annotation


# instance fields
.field private final original:Lretrofit2/adapter/rxjava3/RxJava3CallAdapterFactory;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lretrofit2/CallAdapter$Factory;-><init>()V

    .line 2
    invoke-static {}, Lretrofit2/adapter/rxjava3/RxJava3CallAdapterFactory;->create()Lretrofit2/adapter/rxjava3/RxJava3CallAdapterFactory;

    move-result-object v0

    iput-object v0, p0, Lg/g/a/a/i/n/j;->original:Lretrofit2/adapter/rxjava3/RxJava3CallAdapterFactory;

    return-void
.end method

.method public static create()Lretrofit2/CallAdapter$Factory;
    .locals 1

    .line 1
    new-instance v0, Lg/g/a/a/i/n/j;

    invoke-direct {v0}, Lg/g/a/a/i/n/j;-><init>()V

    return-object v0
.end method


# virtual methods
.method public get(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Lretrofit2/Retrofit;)Lretrofit2/CallAdapter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Lretrofit2/Retrofit;",
            ")",
            "Lretrofit2/CallAdapter<",
            "**>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lg/g/a/a/i/n/j$a;

    iget-object v1, p0, Lg/g/a/a/i/n/j;->original:Lretrofit2/adapter/rxjava3/RxJava3CallAdapterFactory;

    invoke-virtual {v1, p1, p2, p3}, Lretrofit2/adapter/rxjava3/RxJava3CallAdapterFactory;->get(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Lretrofit2/Retrofit;)Lretrofit2/CallAdapter;

    move-result-object p1

    invoke-direct {v0, p3, p1}, Lg/g/a/a/i/n/j$a;-><init>(Lretrofit2/Retrofit;Lretrofit2/CallAdapter;)V

    return-object v0
.end method
