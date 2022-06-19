.class public Le/h/a/c/o;
.super Le/h/a/c/k;
.source "SourceFile"


# instance fields
.field public final a:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

.field public final b:Le/h/a/c/b0;

.field public c:Le/h/a/c/c0;


# direct methods
.method public constructor <init>(Lcom/clevertap/android/sdk/CleverTapInstanceConfig;Le/h/a/c/b0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/h/a/c/k;-><init>()V

    .line 2
    iput-object p1, p0, Le/h/a/c/o;->a:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 3
    iput-object p2, p0, Le/h/a/c/o;->b:Le/h/a/c/b0;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object p1, p0, Le/h/a/c/o;->b:Le/h/a/c/b0;

    invoke-virtual {p1}, Le/h/a/c/b0;->j()Ljava/lang/String;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_1

    :cond_1
    return-void
.end method
