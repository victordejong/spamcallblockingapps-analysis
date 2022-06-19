.class Lio/realm/k0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/realm/internal/q/c$a;


# instance fields
.field private final a:Lio/realm/j0;


# direct methods
.method constructor <init>(Lio/realm/j0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/realm/k0;->a:Lio/realm/j0;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lio/realm/internal/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/realm/k0;->a:Lio/realm/j0;

    invoke-virtual {v0, p1}, Lio/realm/j0;->f(Ljava/lang/String;)Lio/realm/internal/c;

    move-result-object p1

    return-object p1
.end method

.method public b()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/realm/k0;->a:Lio/realm/j0;

    invoke-virtual {v0}, Lio/realm/j0;->k()Z

    move-result v0

    return v0
.end method

.method public c(Ljava/lang/String;)J
    .locals 2

    .line 1
    iget-object v0, p0, Lio/realm/k0;->a:Lio/realm/j0;

    invoke-virtual {v0, p1}, Lio/realm/j0;->j(Ljava/lang/String;)Lio/realm/internal/Table;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v0

    return-wide v0
.end method
