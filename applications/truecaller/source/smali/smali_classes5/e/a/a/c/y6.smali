.class public final Le/a/a/c/y6;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Le/a/a/c/f8;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Landroid/content/ContentResolver;

.field public final c:Ls1/w/f;

.field public final d:Le/a/a/g/w;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Ls1/w/f;Le/a/a/g/w;)V
    .locals 1
    .param p2    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "contentResolver"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "async"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "readMessageStorage"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a/c/y6;->b:Landroid/content/ContentResolver;

    iput-object p2, p0, Le/a/a/c/y6;->c:Ls1/w/f;

    iput-object p3, p0, Le/a/a/c/y6;->d:Le/a/a/g/w;

    .line 2
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Le/a/a/c/y6;->a:Ljava/util/Map;

    return-void
.end method
