.class Lio/realm/h$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/realm/z$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/realm/h;-><init>(Lio/realm/z;Lio/realm/internal/OsSharedRealm$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/realm/z;

.field final synthetic b:Lio/realm/h;


# direct methods
.method constructor <init>(Lio/realm/h;Lio/realm/z;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/realm/h$a;->b:Lio/realm/h;

    iput-object p2, p0, Lio/realm/h$a;->a:Lio/realm/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 4

    if-lez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object p1, p0, Lio/realm/h$a;->a:Lio/realm/z;

    invoke-virtual {p1}, Lio/realm/z;->i()Lio/realm/b0;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/b0;->s()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 2
    :cond_1
    iget-object p1, p0, Lio/realm/h$a;->b:Lio/realm/h;

    iget-object p1, p1, Lio/realm/a;->j:Lio/realm/internal/OsSharedRealm;

    invoke-static {p1}, Lio/realm/internal/OsObjectStore;->c(Lio/realm/internal/OsSharedRealm;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    if-eqz p1, :cond_2

    return-void

    .line 3
    :cond_2
    iget-object p1, p0, Lio/realm/h$a;->b:Lio/realm/h;

    iget-object p1, p1, Lio/realm/a;->j:Lio/realm/internal/OsSharedRealm;

    invoke-virtual {p1}, Lio/realm/internal/OsSharedRealm;->beginTransaction()V

    .line 4
    iget-object p1, p0, Lio/realm/h$a;->b:Lio/realm/h;

    iget-object p1, p1, Lio/realm/a;->j:Lio/realm/internal/OsSharedRealm;

    invoke-static {p1}, Lio/realm/internal/OsObjectStore;->c(Lio/realm/internal/OsSharedRealm;)J

    move-result-wide v0

    cmp-long p1, v0, v2

    if-nez p1, :cond_3

    .line 5
    iget-object p1, p0, Lio/realm/h$a;->b:Lio/realm/h;

    iget-object p1, p1, Lio/realm/a;->j:Lio/realm/internal/OsSharedRealm;

    invoke-static {p1, v2, v3}, Lio/realm/internal/OsObjectStore;->e(Lio/realm/internal/OsSharedRealm;J)V

    .line 6
    :cond_3
    iget-object p1, p0, Lio/realm/h$a;->b:Lio/realm/h;

    iget-object p1, p1, Lio/realm/a;->j:Lio/realm/internal/OsSharedRealm;

    invoke-virtual {p1}, Lio/realm/internal/OsSharedRealm;->commitTransaction()V

    return-void
.end method
